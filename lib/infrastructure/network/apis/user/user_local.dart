import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLocal {
  final IStorage _storage;
  UserLocal(
    this._storage,
  );
  final String addressKey = "address";

  Future<Either<Exception, UserAddress>> setActiveAddress(
      UserAddress model) async {
    try {
      final _box = await _storage.openBox(StorageConstants.address);
      print("Create Active Address");
      await _storage.setJson(_box, key: addressKey, object: model.toJson());

      final data = await _storage.getJson(_box, key: addressKey);
      final parsedData = UserAddress.fromJson(data);
      await _storage.close(_box);
      return right(parsedData);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }

  Future<Either<Exception, UserAddress>> getActiveAddress() async {
    try {
      final _box = await _storage.openBox(StorageConstants.address);
      final data = await _storage.getJson(_box, key: addressKey);
      final model = UserAddress.fromJson(data);
      await _storage.close(_box);
      if (model.address == null) {
        return left(Exception());
      }
      return right(model);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }
}
