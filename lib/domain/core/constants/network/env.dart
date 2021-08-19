import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/infrastructure/core/storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

abstract class Env {
  Future<String> get getBaseUrl;
}

@Injectable(as: Env)
@Environment(Environment.prod)
class EnvProd extends Env {
  @override
  Future<String> get getBaseUrl async => Endpoints.baseUrlDigirestoProd;
}

@Injectable(as: Env)
@Environment(Environment.dev)
class EnvDev extends Env {
  @override
  Future<String> get getBaseUrl async {
    Storage _storage = Storage(Hive, Logger());
    await _storage.openBox(StorageConstants.base);
    String? devUrl = _storage.getString(key: 'devUrl');
    if (devUrl == null) {
      return Endpoints.baseUrlDigiresto;
    } else {
      return devUrl;
    }
  }
}
