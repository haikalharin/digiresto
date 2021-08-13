import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/entity/login_pin.dart';
import 'package:digiresto/domain/auth/entity/register_status.dart';
import 'package:digiresto/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, String>> getOtp({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, LoginPin>> loginPin({
    required PhoneNumber phoneNumber,
    required Pin pin,
  });
  Future<Either<AuthFailure, bool>> validateOtp({
    required PhoneNumber phoneNumber,
    required Otp otp,
  });
  Future<Either<AuthFailure, RegisterStatus>> register({
    required PhoneNumber phoneNumber,
    required Otp otp,
  });
}
