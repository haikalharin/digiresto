import 'dart:io';
import 'package:digiresto/domain/complain/complain_failure.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/infrastructure/complain/i_complain_repository.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IComplainRepository)
class ComplainRepository implements IComplainRepository {
  final INetworkService _networkService;
  final Logger logger;

  const ComplainRepository(this._networkService, this.logger) : super();

  @override
  Future<Either<ComplainFailure, List<Complain>>> getComplainCategory() async {
    try {
      final _apiUrl = Endpoints.urlForward;
      final queryParameter = Endpoints.urlGetComplainCategory;

      final apiResult = await _networkService.postHttp(
          path: _apiUrl, queryParameter: queryParameter);
      final data = (apiResult as Map<String, dynamic>)['data'];

      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('data kosong');
        return left(ComplainFailure.noData());
      }
      final complainList = list
          .map((item) => Complain.fromJson(Map<String, dynamic>.from(item)))
          .toList();
      return right(complainList);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ComplainFailure.generalError(e.message));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ComplainFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ComplainFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ComplainFailure.noInternet());
    }
  }

  @override
  Future<Either<ComplainFailure, Unit>> postComplain({
    required String complaintCategory,
    required String details,
    required String receiptCode,
    String? consumedDate,
    String? imagePath,
  }) async {
    try {
      final _apiUrl =
          '${Endpoints.urlForward}?r=v2/transactioncomplaints&&receiptCode=$receiptCode';
      final FormData formData = FormData.fromMap(
        {
          "complaint_category": complaintCategory,
          "details": details,
          "consumed_date": '$consumedDate',
        },
      );

      if (imagePath != '') {
        var file = await MultipartFile.fromFile(
          imagePath!,
        );

        formData.files.add(MapEntry('images', file));
        print('image_path  a: $file');
      }

      final apiResult =
          await _networkService.postHttp(path: _apiUrl, content: formData);
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['response']['code'];
      if (data as String != '00') {
        return left(ComplainFailure.unableToUpdate());
      }
      return right(unit);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ComplainFailure.generalError(e.message));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ComplainFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ComplainFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ComplainFailure.noInternet());
    }
  }
}
