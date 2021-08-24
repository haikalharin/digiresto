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
    final String nom = input.replaceAll('.', '');
    return Nominal._(
      ValueValidators.validateMinNumber(nom, 10000),
    );
  }

  const Nominal._(this.value);
}
