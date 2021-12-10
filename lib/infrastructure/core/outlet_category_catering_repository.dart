import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/catering/entity/outlet_category_catering_request.dart';
import 'package:digiresto/domain/catering/i_catering_repository.dart';
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/catering/outlet_category_catering_response.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: ICateringRepository)
class CateringRepository implements ICateringRepository {
  final INetworkService _networkService;
  final Logger logger;
  const CateringRepository(this._networkService, this.logger);

  @override
  Future<Either<CateringFailure, OutletCategoryCateringResponse>>
      getOutletCategoryCatering({
    required OutletCategoryCateringRequest outletCategoryCateringRequest,
  }) async {
    try {
      final apiUrl = Endpoints.urlForward;
      final queryParameter = Endpoints.urlGetOutletByLocation;

      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        queryParameter: queryParameter,
        content: outletCategoryCateringRequest,
      );

      return right(OutletCategoryCateringResponse.fromJson(apiResult));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CateringFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CateringFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CateringFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(CateringFailure.unexpected());
    }
  }
}
