import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class OrderLocal {
  final IStorage _storage;
  final String _sessionIdKey = "sessionId";
  OrderLocal(this._storage);

  Future<Either<Exception, String>> getSessionId() async {
    try {
      await _storage.openBox(StorageConstants.order);
      final sessionId = _storage.getString(key: _sessionIdKey);
      return sessionId == null
          ? left(Exception("session is null"))
          : right(sessionId);
    } catch (e, stackTrace) {
      return left(Exception(stackTrace.toString()));
    }
  }

  Future<Either<Exception, String>> setSessionId(String value) async {
    try {
      await _storage.openBox(StorageConstants.order);
      await _storage.putString(key: _sessionIdKey, value: value);
      final sessionId = _storage.getString(key: _sessionIdKey);
      return sessionId == null
          ? left(Exception("session is null"))
          : right(sessionId);
    } catch (e, stackTrace) {
      return left(Exception(stackTrace.toString()));
    }
  }
}
