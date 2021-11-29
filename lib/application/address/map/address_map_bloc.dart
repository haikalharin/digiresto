import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:digiresto/domain/entity/map/param/get_geocode_param.dart';
import 'package:digiresto/domain/entity/user/param/user_save_address_param.dart';
import 'package:digiresto/domain/entity/user/user_add_address_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/map/map_repository.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'address_map_bloc.freezed.dart';
part 'address_map_event.dart';
part 'address_map_state.dart';

@injectable
class AddressMapBloc extends Bloc<AddressMapEvent, AddressMapState> {
  UserRepository _userRepository;
  MapRepository _mapRepository;
  AddressMapBloc(
    this._userRepository,
    this._mapRepository,
  ) : super(_Initial());

  @override
  Stream<AddressMapState> mapEventToState(AddressMapEvent gEvent) async* {
    yield* gEvent.map(
        saveAddress: (request) async* {
          final saveAddress =
              await _userRepository.addAddress(request.request.toMap());
          yield saveAddress.fold(
              (error) => AddressMapState.saveAddressFail(error.toString()),
              (data) => AddressMapState.saveAddressSuccess(data));
        },
        getGeoCode: (request) async* {
          final getGeoCode = await _mapRepository.geocode();
          yield getGeoCode.fold(
              (error) => AddressMapState.getGeoCodeFail(error.toString()),
              (data) => AddressMapState.getGeoCodeSuccess(data));
        },
        changeAddress: (_) async* {},
        setActiveAddress: (value) async* {
          final setActiveAddress =
              await _userRepository.setActiveAddress(value.model);
          yield setActiveAddress.fold(
              (error) => AddressMapState.setActiveAddressFail(error.toString()),
              (data) => AddressMapState.setActiveAddressSuccess(data));
        });
  }
}
