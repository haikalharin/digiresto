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
            print('data json : $data');
            state.maybeMap(
                orElse: () {},
                complaintSelect: (e) {
                  emit(e.copyWith(complainCategory: data));
                });
            return ComplainState.getComplaintCategorySuccess(data);
          }));
        },
        complainCategoriSelected: (e) async {
          if (e.complain!.image_required) {
            emit(ComplainState.complaintSelect(
              e.complain?.consumed_date ?? false,
              false,
              complain: e.complain,
              complainCategory: e.list,
              file: File(''),
              imageUrl: '',
              detail: '',
              eatTime: '',
            ));
          } else {
            emit(ComplainState.complaintSelect(
              e.complain?.consumed_date ?? false,
              true,
              complain: e.complain,
              complainCategory: e.list,
              file: File(''),
              imageUrl: '',
              detail: '',
              eatTime: '',
            ));
          }
        },
        postComplain: (e) async {
          emit(_LoadInProgress());
          final sendSuccessOrFailure = await _iComplainRepository.postComplain(
            complaintCategory: e.complainId,
            details: e.details,
            receiptCode: e.receiptCode,
            consumedDate: e.consumeDate ?? '',
            imagePath: e.imagePath,
          );
          emit(sendSuccessOrFailure.fold(
            (failure) {
              return ComplainState.getComplaintCategoryFailure(failure);
            },
            (data) => ComplainState.sendingSuccesss(),
          ));
        },
        detailSubmit: (value) async {
          state.maybeMap(
              orElse: () {},
              complaintSelect: (e) {
                emit(e.copyWith(detail: value.detail));
              });
        },
        eatTimeSubmit: (value) async {
          state.maybeMap(
              orElse: () {},
              complaintSelect: (e) {
                emit(e.copyWith(eatTime: value.eatTime));
              });
        },
        attachmentSubmit: (value) async {
          state.maybeMap(
              orElse: () {},
              complaintSelect: (e) {
                emit(e.copyWith(
                    imageUrl: value.imagePath, sendButtonIsActive: true));
              });
        },
      );
    });
  }
}
