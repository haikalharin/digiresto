import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
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
  ) : super(_Initial()) {
    on<AddressListEvent>(
      (event, emit) async {
        await event.map(
          setDefault: (request) async {
            emit(AddressListState.loadInProgress());
            final setDefault = await _userRepository
                .setDefaultAddress(request.request.toMap());
            emit(setDefault.fold(
                (error) => AddressListState.setDefaultFail(error.toString()),
                (data) => AddressListState.setDefaultSuccess(data)));
          },
          removeAddress: (request) async {
            emit(AddressListState.loadInProgress());
            final removeAddress =
                await _userRepository.removeAddress(request.request.toMap());
            emit(removeAddress.fold(
                (error) => AddressListState.loadFailure(error.toString()),
                (data) => AddressListState.removeAddressSuccess(data)));
          },
          getGeoCode: (request) async {
            emit(AddressListState.loadInProgress());
            final getGeoCode = await _mapRepository.geocode(request.param);
            emit(getGeoCode.fold(
                (error) => AddressListState.getGeoCodeFail(error.toString()),
                (data) => AddressListState.getGeoCodeSuccess(data)));
          },
          setActiveAddress: (value) async {
            emit(AddressListState.loadInProgress());
            final setActiveAddress =
                await _userRepository.setActiveAddress(value.model);
            emit(setActiveAddress.fold(
                (error) =>
                    AddressListState.setActiveAddressFail(error.toString()),
                (data) => AddressListState.setActiveAddressSuccess(data)));
          },
          addAddress: (request) async {
            emit(AddressListState.loadInProgress());
            final addAddress =
                await _userRepository.addAddress(request.request.toMap());
            emit(addAddress.fold(
                (error) => AddressListState.loadFailure(error.toString()),
                (data) => AddressListState.addAddressSuccess(data)));
          },
          getActiveAddress: (value) async {
            emit(AddressListState.loadInProgress());
            final setActiveAddress = await _userRepository.getActiveAddress();
            emit(setActiveAddress.fold(
                (error) => AddressListState.loadFailure(error.toString()),
                (data) => AddressListState.getActiveAddressSuccess(data)));
          },
          getAllAddress: (value) async {
            emit(AddressListState.loadInProgress());
            final listAddress = await _userRepository.getAddress();
            emit(listAddress.fold(
                (error) => AddressListState.loadFailure(error.toString()),
                (data) => AddressListState.getAllAddressSuccess(data)));
          },
        );
      },
      transformer: sequential(),
    );
  }
}
