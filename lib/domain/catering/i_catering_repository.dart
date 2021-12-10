import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/catering/entity/outlet_category_catering_request.dart';
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/catering/outlet_category_catering_response.dart';

abstract class ICateringRepository {
  Future<Either<CateringFailure, OutletCategoryCateringResponse>>
      getOutletCategoryCatering({
    required OutletCategoryCateringRequest outletCategoryCateringRequest,
  });
}
