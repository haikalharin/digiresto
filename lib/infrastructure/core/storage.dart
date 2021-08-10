import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

import 'package:injectable/injectable.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';

@LazySingleton(as: IStorage)
class Storage implements IStorage {
  late Box box;
  final HiveInterface hive;
  final Logger logger;

  Storage(
    this.hive,
    this.logger,
  );

  @override
  Future openBox(
    StorageConstants boxName,
  ) async {
    final List<int> hiveKey = await hiveKeys;

    box = await hive.openBox(
      describeEnum(boxName),
      encryptionCipher: HiveAesCipher(hiveKey),
    );
    logger.d(box.isOpen);
  }

  @override
  Future close() async {
    await box.close();
    return;
  }

  @override
  Future<void> putData({required Map<String, dynamic> json}) async {
    try {
      logger.d('check box is open ${box.isOpen}');
      await box.putAll(json);
      return;
    } catch (e) {
      logger.d(e.toString());
    }
  }

  @override
  Future putDynamicData({required String key, required dynamic value}) async {
    await box.put(key, value);
  }

  @override
  Future<void> putListData({required List dataList}) async {
    try {
      dataList.map((e) async {
        await box.add(e);
      });
    } catch (e) {
      logger.d(e);
    }

    return;
  }

  @override
  Future<void> putString({required String key, required String value}) async {
    await box.put(key, value);
    return;
  }

  @override
  Future<void> putBool({required String key, required bool value}) async {
    await box.put(key, value);
    return;
  }

  @override
  Future<String?> getString({required String key}) async {
    final String? value = box.get(key);
    return value;
  }

  @override
  Future<DateTime?> getDate({required String key}) async {
    final DateTime? date = box.get(key);
    // box.close();
    return date;
  }

  @override
  Future<int?> getInt({required String key}) async {
    final int? value = box.get(key);
    return value;
  }

  @override
  Future<bool> getBool({required String key}) async {
    bool? value = box.get(key);
    // ignore: join_return_with_assignment
    value ??= false;
    // box.close();
    return value;
  }

  @override
  Future<double?> getDouble({required String key}) async {
    final double? value = box.get(key);
    // box.close();
    return value;
  }

  @override
  Future<Map<String, dynamic>> getData() async {
    final Map<String, dynamic> value = Map<String, dynamic>.from(box.toMap());
    logger.d(value);
    return value;
  }

  @override
  Future<dynamic> getDynamicData({required String key}) async {
    return box.get(key);
  }

  @override
  Future<List?> getListData() async {
    final value = box.toMap();
    logger.d(value);
    final List datas = [];
    value.forEach((key, value) {
      datas.add(value);
    });
    // box.close();
    return datas;
  }

  @override
  Future<void> deleteData() async {
    await box.deleteFromDisk();
    return;
  }

  @override
  Future<void> deleteString({required String key}) async {
    await box.delete(key);
    // box.close();
    return;
  }

  Future<List<int>> get hiveKeys async {
    const ss = FlutterSecureStorage();
    String? stringKey = await ss.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      final Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await ss.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }
}
