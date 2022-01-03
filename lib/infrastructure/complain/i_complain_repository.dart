import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:digiresto/domain/complain/complain_failure.dart';

abstract class IComplainRepository {
  Future<Either<ComplainFailure, List<Complain>>> getComplainCategory();
  Future<Either<ComplainFailure, Unit>> postComplain(
      {required String complaintCategory,
      required String details,
      required String receiptCode,
      String? consumedDate,
      String? imagePath});
}
