import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:digiresto/domain/complain/complain_failure.dart';

abstract class IComplainRepository {
  Future<Either<ComplainFailure, ComplainCategory>> getComplainCategory();
  Future<Either<ComplainFailure, Unit>> postComplain();
}
