import 'package:hive/hive.dart';

enum StorageConstants {
  base,
  articles,
  user,
  security,
  cache,
  address,
  cart,
  outletDetail,
  orderProduct,
  locale,
}

abstract class IStorage {
  Future<Box> openBox(
    StorageConstants boxName,
  );
  Future close(
    Box box,
  );
  Future<void> putData(Box box, {required Map<String, dynamic> json});
  Future putDynamicData(Box box, {required String key, required dynamic value});
  Future<void> putListData(Box box, {required List dataList});
  Future<void> putString(Box box, {required String key, required String value});
  Future<void> putBool(Box box, {required String key, required bool value});
  String? getString(Box box, {required String key});
  Future<DateTime?> getDate(Box box, {required String key});
  Future<int?> getInt(Box box, {required String key});
  Future<bool> getBool(Box box, {required String key});
  Future<double?> getDouble(Box box, {required String key});
  Future<Map<String, dynamic>> getData(
    Box box,
  );
  Future<dynamic> getDynamicData(Box box, {required String key});
  Future<List?> getListData(
    Box box,
  );
  Future<void> deleteData(
    Box box,
  );
  Future<void> deleteString(Box box, {required String key});
  Future<void> setJson(Box box,
      {required String key, required Map<String, dynamic> object});
  dynamic getJson(
    Box box, {
    required String key,
  });
}
