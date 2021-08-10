import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signIn();
}
