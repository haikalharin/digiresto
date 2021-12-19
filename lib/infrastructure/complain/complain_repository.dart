import 'package:digiresto/domain/complain/complain_failure.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/infrastructure/complain/i_complain_repository.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IComplainRepository)
class ComplainRepository implements IComplainRepository {
  final INetworkService _networkService;
  final Logger logger;

  const ComplainRepository(this._networkService, this.logger) : super();

  @override
  Future<Either<ComplainFailure, ComplainCategory>>
      getComplainCategory() async {
    try {
      final _apiUrl = Endpoints.urlForward;
      final apiResult = await _networkService.getHttp(path: _apiUrl);
      final data = (apiResult as Map<String, dynamic>)['data'] as Map;
      if (data.isEmpty) {
        logger.d('data kosong');
        return left(ComplainFailure.noData());
      }
      final complainCategoryList =
          ComplainCategory.fromJson(Map<String, dynamic>.from(data));
      return right(complainCategoryList);
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
  Future<Either<ComplainFailure, Unit>> postComplain() {
    // TODO: implement postComplain
    throw UnimplementedError();
  }
}
