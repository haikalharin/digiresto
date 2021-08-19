import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptor extends Interceptor {
  // final String? token;
  final IStorage _storage;
  AuthInterceptor(this._storage);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    await _storage.openBox(StorageConstants.user);
    final _userInStorage = await _storage.getData();
    final _userAuth = UserAuth.fromJson(_userInStorage);
    final String? security = _userAuth.token;
    Map<String, dynamic> headers = options.headers;

    if (security != null) {
      headers.addAll({"Authorization": "Bearer $security"});
    }
    // else {
    //   var _token =
    //       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJncmFudFR5cGUiOiJhdXRob3JpemF0aW9uX2NvZGUiLCJoYW5kcGhvbmUiOiIwODU3NzkwODg0MzEiLCJpYXQiOjE2Mjg5MDkxMTIsImV4cCI6MTYyOTUxMzkxMn0.9z_ibXOLzxCqu_PQrXOnZcawaK3lSQPw0JY8rbup6kg";

    //   headers.addAll({"Authorization": "Bearer $_token"});
    // }
    options.headers = headers;
    await _storage.close();

    super.onRequest(options, handler);
  }
}
