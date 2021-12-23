import 'package:digiresto/domain/catering/i_catering_repository.dart';
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/catering/outlet_category_catering_response.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart' hide IList;

@LazySingleton(as: ICateringRepository)
class CateringRepository implements ICateringRepository {
  final INetworkService _networkService;
  final Logger logger;
  const CateringRepository(this._networkService, this.logger);

  @override
  Future<Either<CateringFailure, IList<OutletCategoryDataCateringResponse>>>
      getOutletCategoryCatering({
    required int page,
    String? search,
    List<String>? excludeMerchantIds,
    required bool isHideOpen,
    required String location,
    required bool isCatering,
    required String mealsTypes,
    required String preOrderDate,
  }) async {
    try {
      final apiUrl = Endpoints.urlForward;
      final queryParameter = Endpoints.urlGetOutletByLocation;

      final queryString = {
        "page": page.toString(),
        "filter": search ?? "",
        "excludeMerchantIds": excludeMerchantIds ?? [],
        "isHideOpen": isHideOpen,
        "location": location,
        "isCatering": isCatering,
        "mealsTypes": mealsTypes,
        "preOrderDate": preOrderDate
      };

      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        queryParameter: queryParameter,
        content: {
          "query_string": queryString,
          "body": {},
        },
      );
      return right(
          OutletCategoryCateringResponse.fromJson(apiResult).data.toIList());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(CateringFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(CateringFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(CateringFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(e);
      logger.d(stacktrace);
      return left(CateringFailure.unexpected());
    }
  }
}
