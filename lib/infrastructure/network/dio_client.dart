import 'package:digiresto/domain/core/constants/network/env.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class DioClient {
  // dio instance
  final Dio _dio;
  final Logger logger;
  // @Named('baseUrl')
  final Env _baseUrl;

  DioClient(
    this._dio,
    this.logger,
    this._baseUrl,
  );

  // Get:-----------------------------------------------------------------------
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      String baseUrl = await _baseUrl.getBaseUrl;
      String uri = '$baseUrl$path';
      final Response response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on DioError catch (e) {
      throw e;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<dynamic> post(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      String baseUrl = await _baseUrl.getBaseUrl;
      String uri = '$baseUrl$path';
      final Response response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      logger.d(_dio.options.headers);
      return response.data;
    } catch (e) {
      logger.d(e);
      throw e;
    }
  }
}
