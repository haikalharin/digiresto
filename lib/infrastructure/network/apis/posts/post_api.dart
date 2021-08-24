import 'dart:async';

import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/entity/post/post_list.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PostApi {
  final INetworkService _networkService;

  PostApi(
    this._networkService,
  );

  /// Returns list of post in response
  Future<PostList> getPosts() async {
    try {
      final res = await _networkService.getHttp(path: Endpoints.getPosts);
      return PostList.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
