import 'dart:async';

import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/entity/post/post_list.dart';
import 'package:digiresto/infrastructure/network/dio_client.dart';
import 'package:digiresto/infrastructure/network/rest_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  PostApi(this._dioClient, this._restClient);

  /// Returns list of post in response
  Future<PostList> getPosts() async {
    try {
      final res = await _dioClient.get(Endpoints.getPosts);
      return PostList.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  /// sample api call with default rest client
//  Future<PostsList> getPosts() {
//
//    return _restClient
//        .get(Endpoints.getPosts)
//        .then((dynamic res) => PostsList.fromJson(res))
//        .catchError((error) => throw NetworkException(message: error));
//  }

}
