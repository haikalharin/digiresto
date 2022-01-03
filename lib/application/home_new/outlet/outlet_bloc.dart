import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/home_failure.dart';
import 'package:digiresto/domain/home/i_home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'outlet_event.dart';
part 'outlet_state.dart';
part 'outlet_bloc.freezed.dart';

@lazySingleton
class OutletBloc extends Bloc<OutletEvent, OutletState> {
  final IHomeRepository _homeRepository;

  OutletBloc(this._homeRepository) : super(_Initial()) {
    on<OutletEvent>((event, emit) async {
      await event.map(
        getOutlets: (_event) async {
          emit(OutletState.loadInProgress());
          final address = await _homeRepository.getUserAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final location = "${activeAddr.latitude}, ${activeAddr.longitude}";
          final getOutlets = await _homeRepository.getOutlets(
            page: _event.page,
            location: location,
            menuCategory: _event.menuCategory,
            search: _event.search,
            isHideOpen: _event.isHideOpen,
          );
          getOutlets.fold(
            (failure) => emit(OutletState.getListOutletFailure(failure)),
            (outlets) => emit(OutletState.getListOutletSuccess(outlets.unlock)),
          );
        },
      );
    });
  }
}
