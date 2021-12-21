import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/auth_exception.dart';
import 'package:digiresto/domain/core/exceptions/no_internet_exception.dart';
import 'package:digiresto/domain/core/exceptions/server_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/promo_voucher/entity/promo_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/entity/voucher_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/i_promo_voucher_repository.dart';
import 'package:digiresto/domain/promo_voucher/promo_voucher_failure.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IPromoVoucherRepository)
class PromoVoucherRepository implements IPromoVoucherRepository {
  final INetworkService _networkService;
  final Logger logger;

  const PromoVoucherRepository(this._networkService, this.logger);

  @override
  Future<Either<PromoVoucherFailure, IList<PromoOutlet>>>
      getPromoOutlet(
          {required String outletId, required String merchantId}) async {
    try {
      final path = Endpoints.urlForward;
      final queryParam = Endpoints.urlGetListPromoOutlet;
      final content = {
        "query_string": {"outletId": outletId, "merchantId": merchantId},
        "body": {}
      };

      final result = await _networkService.postHttp(
          path: path, queryParameter: queryParam, content: content);
      final response = IList.from(
        PromoOutletResponse.fromJson(result).data.map((e) => e),
      );
      return right(response);
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(PromoVoucherFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(PromoVoucherFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(PromoVoucherFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(e);
      logger.d(stacktrace);
      return left(PromoVoucherFailure.unexpected());
    }
  }

  @override
  Future<Either<PromoVoucherFailure, IList<Datum>>>
      getVoucher({required String outletId, required String merchantId}) async {
    try {
      final path = Endpoints.urlForward;
      final queryParam = Endpoints.urlGetListVoucherOutlet;
      final content = {
        "query_string": {"outletId": outletId, "merchantId": merchantId},
        "body": {}
      };

      final result = await _networkService.postHttp(
          path: path, queryParameter: queryParam, content: content);
      final response = IList.from(
        VoucherOutletResponse.fromJson(result).data.map((e) => e),
      );
      return right(response);
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(PromoVoucherFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(PromoVoucherFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(PromoVoucherFailure.noInternet());
    } catch (e, stacktrace) {
      logger.d(e);
      logger.d(stacktrace);
      return left(PromoVoucherFailure.unexpected());
    }
  }
}
