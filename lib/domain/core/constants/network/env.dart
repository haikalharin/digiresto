import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:injectable/injectable.dart';

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
  final IStorage _storage;
  EnvDev(this._storage);
  @override
  Future<String> get getBaseUrl async {
    final _box = await _storage.openBox(StorageConstants.base);
    String? devUrl = _storage.getString(_box, key: 'devUrl');
    if (devUrl == null) {
      return Endpoints.baseUrlDigiresto;
    } else {
      return devUrl;
    }
  }
}
