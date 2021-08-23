import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/failures.dart';
import 'package:digiresto/domain/core/value_objects.dart';
import 'package:digiresto/domain/core/value_validators.dart';

class Nominal extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Nominal(
    String input,
  ) {
    return Nominal._(
      ValueValidators.validateMinNumber(input, 10000),
    );
  }

  const Nominal._(this.value);
}
