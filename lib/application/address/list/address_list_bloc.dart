import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/user/param/user_remove_address_param.dart';
import 'package:digiresto/domain/entity/user/param/user_set_default_address_param.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/entity/user/user_remove_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'address_list_bloc.freezed.dart';
part 'address_list_event.dart';
part 'address_list_state.dart';

@injectable
class AddressListBloc extends Bloc<AddressListEvent, AddressListState> {
  UserRepository _userRepository;

  AddressListBloc(
    this._userRepository,
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
          (error) => AddressListState.removeAddressFail(error.toString()),
          (data) => AddressListState.removeAddressSuccess(data));
    });
  }
}
