import 'dart:io';
import 'package:bloc/bloc.dart';

import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:digiresto/domain/complain/complain_failure.dart';
import 'package:digiresto/infrastructure/complain/i_complain_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'complain_event.dart';
part 'complain_state.dart';
part 'complain_bloc.freezed.dart';

@injectable
class ComplainBloc extends Bloc<ComplainEvent, ComplainState> {
  final IComplainRepository _iComplainRepository;

  ComplainBloc(this._iComplainRepository) : super(_Initial()) {
    on<ComplainEvent>((event, emit) async {
      await event.map(
          getComplainCategory: (e) async {
            emit(_LoadInProgress());
            final categorySuccessOrFailure =
                await _iComplainRepository.getComplainCategory();
            emit(categorySuccessOrFailure.fold((failure) {
              return ComplainState.getComplaintCategoryFailure(failure);
            }, (data) {
              state.maybeMap(
                  orElse: () {},
                  complaintSelect: (e) {
                    emit(e.copyWith(complainCategory: data));
                  });
              return ComplainState.getComplaintCategorySuccess(data);
            }));
          },
          complainCategoriSelected: (e) async {
            if (int.parse(e.id.toString()) == 4) {
              emit(ComplainState.complaintSelect(
                  e.id, e.list, e.file, '', true, false));
            } else {
              emit(ComplainState.complaintSelect(
                  e.id, e.list, e.file, '', false, false));
            }
          },
          attachmentSubmit: (event) async {
            state.maybeMap(
                orElse: () {},
                complaintSelect: (e) {
                  emit(e.copyWith(
                      imageUrl: event.image, sendButtonIsActive: true));
                });
          },
          postComplain: (e) async {});
    });
  }
}
