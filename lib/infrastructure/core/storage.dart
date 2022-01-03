import 'dart:convert';
import 'dart:typed_data';

import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IStorage)
class Storage implements IStorage {
  final HiveInterface hive;
  final Logger logger;

  Storage(
    this.hive,
    this.logger,
  );

  Future<Box> openBox(
    StorageConstants boxName,
  ) async {
    List<int>? hiveKey = await hiveKeys;

    final _box = await hive.openBox(
      describeEnum(boxName),
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    return _box;
  }

  Future close(
    Box box,
  ) async {
    await box.close();
    return;
  }

  Future<void> putData(Box box, {required Map<String, dynamic> json}) async {
    try {
      logger.d('check box is open ${box.isOpen}');
      await box.putAll(json);
      return;
    } catch (e) {
      logger.d(e.toString());
    }
  }

  Future putDynamicData(Box box,
      {required String key, required dynamic value}) async {
    await box.put(key, value);
  }

  Future<void> putListData(Box box, {required List dataList}) async {
    try {
      dataList.map((e) async {
        await box.add(e);
      });
    } catch (e) {
      logger.d(e);
    }

    return;
  }

  Future<void> putString(Box box,
      {required String key, required String value}) async {
    await box.put(key, value);
    return;
  }

  Future<void> putBool(Box box,
      {required String key, required bool value}) async {
    await box.put(key, value);
    return;
  }

  String? getString(Box box, {required String key}) {
    String? value = box.get(key);
    return value;
  }

  @override
  getJson(Box box, {required String key}) {
    try {
      dynamic value = box.get(key) != null ? jsonDecode(box.get(key)) : null;
      return value;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> setJson(Box box,
      {required String key, required Map<String, dynamic> object}) async {
    await box.put(key, jsonEncode(object));
    return;
  }

  Future<DateTime?> getDate(Box box, {required String key}) async {
    DateTime? date = box.get(key);
    // box.close();
    return date;
  }

  Future<int?> getInt(Box box, {required String key}) async {
    int? value = box.get(key);
    return value;
  }

  Future<bool> getBool(Box box, {required String key}) async {
    bool? value = box.get(key);
    if (value == null) {
      value = false;
    }
    // box.close();
    return value;
  }

  Future<double?> getDouble(Box box, {required String key}) async {
    double? value = box.get(key);
    // box.close();
    return value;
  }

  Future<Map<String, dynamic>> getData(
    Box box,
  ) async {
    Map<String, dynamic>? value = Map<String, dynamic>.from(box.toMap());
    logger.d(value);
    return value;
  }

  Future<dynamic> getDynamicData(Box box, {required String key}) async {
    return box.get(key);
  }

  Future<List?> getListData(
    Box box,
  ) async {
    final value = box.toMap();
    logger.d(value);
    List datas = [];
    value.forEach((key, value) {
      datas.add(value);
    });
    // box.close();
    return datas;
  }

  Future<void> deleteData(
    Box box,
  ) async {
    await box.deleteFromDisk();
    return;
  }

  Future<void> deleteString(Box box, {required String key}) async {
    await box.delete(key);
    // box.close();
    return;
  }

  Future<List<int>> get hiveKeys async {
    final ss = FlutterSecureStorage();
    String? stringKey = await ss.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await ss.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }
}
