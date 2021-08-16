import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(_Initial());

  @override
  Stream<OrderState> mapEventToState(OrderEvent gEvent) async* {
    //yield* gEvent.map(loaded: (_Loaded value) {});
  }
}
