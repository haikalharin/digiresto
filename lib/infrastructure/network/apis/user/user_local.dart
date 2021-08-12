import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/infrastructure/core/register_module.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLocal {
  final RegisterModule _registerModule;

  UserLocal(this._registerModule);

  Future<Either<Exception, UserAddress>> setActiveAddress(
      UserAddress model) async {
    try {
      var box = await _registerModule.hive.openBox<UserAddress>('user');
      if (box.isEmpty) {
        print("Create Active Address");
        box.add(model);
      } else {
        print("update Active Address");
        box.putAt(0, model);
      }
      return right(box.getAt(0)!);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }

  Future<Either<Exception, UserAddress>> getActiveAddress() async {
    try {
      var box = await _registerModule.hive.openBox<UserAddress>('user');
      return right(box.getAt(0)!);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }
}
