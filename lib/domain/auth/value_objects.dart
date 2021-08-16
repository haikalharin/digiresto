import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/failures.dart';
import 'package:digiresto/domain/core/value_objects.dart';
import 'package:digiresto/domain/core/value_validators.dart';

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      ValueValidators.validatePhone(input),
    );
  }

  const PhoneNumber._(this.value);
}

class Pin extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Pin(String input, {String? firstValue}) {
    return Pin._(
      ValueValidators.validatePinOrOtp(
        value: input,
        firstValue: firstValue,
      ),
    );
  }

  const Pin._(this.value);
}

class Otp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Otp(String input) {
    return Otp._(
      ValueValidators.validatePinOrOtp(
        value: input,
      ),
    );
  }

  const Otp._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(ValueValidators.validateMinStringLength(input, 3));
  }

  const FullName._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(
    String input,
  ) {
    return EmailAddress._(ValueValidators.validateEmail(input));
  }

  const EmailAddress._(this.value);
}
