import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/failures.dart';
import 'package:digiresto/domain/core/value_objects.dart';
import 'package:digiresto/domain/core/value_validators.dart';

class Rating extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Rating(String input) {
    return Rating._(
      ValueValidators.validateMinNumber(input, 1),
    );
  }

  const Rating._(this.value);
}

class Review extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Review(String input) {
    return Review._(
      ValueValidators.validateMinStringLength(input, 10),
    );
  }

  const Review._(this.value);
}
