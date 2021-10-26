import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/domain/credit/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'top_up_credit_event.dart';
part 'top_up_credit_state.dart';
part 'top_up_credit_bloc.freezed.dart';

@injectable
class TopUpCreditBloc extends Bloc<TopUpCreditEvent, TopUpCreditState> {
  ICreditRepository _creditRepository;
  IStorage _storage;
  TopUpCreditBloc(this._creditRepository, this._storage)
      : super(TopUpCreditState.initial());

  @override
  Stream<TopUpCreditState> mapEventToState(
    TopUpCreditEvent event,
  ) async* {
    yield* event.map(
      nominalChanged: (_event) async* {
        yield state.copyWith(
          nominal: Nominal(_event.nominalStr),
        );
      },
      changeDestination: (_event) async* {
        yield state.copyWith(
          destination: _event.destination,
        );
      },
      topUpSubmitted: (_event) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        final isNominalValid = state.nominal.isValid();
        Either<CreditFailure, TopUpVADetails>? vaFailureOrSuccess;
        Either<CreditFailure, TopUpBankDetails>? bankFailureOrSuccess;
        if (isNominalValid) {
          await _storage.openBox(StorageConstants.user);
          final _userInStorage = await _storage.getData();
          final _userAuth = UserAuth.fromJson(_userInStorage);
          final _nominal = state.nominal.getOrCrash();
          await _storage.close();
          switch (state.destination) {
            case 'TOP_UP_VA':
              vaFailureOrSuccess = await _creditRepository.topUpVA(
                  bankCode: _event.param.bankCode,
                  customerPhone: _userAuth.mobilePhone!,
                  amount: _nominal,
                  fee: _event.param.fee ?? '0');
              break;
            case 'TOP_UP_BANK':
              await _event.showDialog();
              bankFailureOrSuccess = await _creditRepository.topUpBank(
                bankCode: _event.param.bankCode,
                customerPhone: _userAuth.mobilePhone!,
                finalAmount: _nominal,
              );
              break;
            default:
              break;
          }
        }
        yield state.copyWith(
          showError: true,
          isSubmitting: false,
          topUpVAfailureOrSuccess: optionOf(vaFailureOrSuccess),
          topUpBankfailureOrSuccess: optionOf(bankFailureOrSuccess),
        );
      },
    );
  }
}
