import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class ICateringRepository {
  Future<Either<CateringFailure, IList<OutletCategoryDataResponse>>>
      getOutletCategoryCatering({
    required int page,
    String? search,
    List<String>? excludeMerchantIds,
    required bool isHideOpen,
    required String location,
    required bool isCatering,
    required String mealsTypes,
    required String preOrderDate,
  });
}
