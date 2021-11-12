import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/entity/static_banner.dart';
import 'package:digiresto/domain/home/home_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

abstract class IHomeRepository {
  Future<Either<HomeFailure, UserAddress>> getUserAddress();
  Future<Either<HomeFailure, IList<StaticBanner>>> getStaticBanner();
  Future<Either<HomeFailure, IList<MenuCategory>>> getMenuCategory();
  Future<Either<HomeFailure, IList<OutletCategoryDataResponse>>> getOutlets({
    required MenuCategory menuCategory,
    required int page,
    required String location,
    String? search,
  });
}
