import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:digiresto/domain/entity/map/param/get_geocode_param.dart';
import 'package:digiresto/domain/entity/user/param/user_add_address_param.dart';
import 'package:digiresto/domain/entity/user/param/user_remove_address_param.dart';
import 'package:digiresto/domain/entity/user/param/user_set_default_address_param.dart';
import 'package:digiresto/domain/entity/user/user_add_address_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/entity/user/user_remove_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/map/map_repository.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'address_list_bloc.freezed.dart';
part 'address_list_event.dart';
part 'address_list_state.dart';

@injectable
class AddressListBloc extends Bloc<AddressListEvent, AddressListState> {
  UserRepository _userRepository;
  MapRepository _mapRepository;

  AddressListBloc(
    this._userRepository,
    this._mapRepository,
  ) : super(_Initial());

  @override
  Stream<AddressListState> mapEventToState(AddressListEvent gEvent) async* {
    yield* gEvent.map(setDefault: (request) async* {
      final setDefault =
          await _userRepository.setDefaultAddress(request.request.toMap());
      yield setDefault.fold(
          (error) => AddressListState.setDefaultFail(error.toString()),
          (data) => AddressListState.setDefaultSuccess(data));
    }, removeAddress: (request) async* {
      final removeAddress =
          await _userRepository.removeAddress(request.request.toMap());
      yield removeAddress.fold(
          (error) => AddressListState.loadFailure(error.toString()),
          (data) => AddressListState.removeAddressSuccess(data));
    }, getGeoCode: (request) async* {
      final getGeoCode = await _mapRepository.geocode(request.request.toMap());
      yield getGeoCode.fold(
          (error) => AddressListState.getGeoCodeFail(error.toString()),
          (data) => AddressListState.getGeoCodeSuccess(data));
    }, setActiveAddress: (value) async* {
      final setActiveAddress =
          await _userRepository.setActiveAddress(value.model);
      yield setActiveAddress.fold(
          (error) => AddressListState.setActiveAddressFail(error.toString()),
          (data) => AddressListState.setActiveAddressSuccess(data));
    }, addAddress: (request) async* {
      final addAddress =
          await _userRepository.addAddress(request.request.toMap());
      yield addAddress.fold(
          (error) => AddressListState.loadFailure(error.toString()),
          (data) => AddressListState.addAddressSuccess(data));
    }, getActiveAddress: (value) async* {
      final setActiveAddress = await _userRepository.getActiveAddress();
      yield setActiveAddress.fold(
          (error) => AddressListState.loadFailure(error.toString()),
          (data) => AddressListState.getActiveAddressSuccess(data));
    });
  }
}
