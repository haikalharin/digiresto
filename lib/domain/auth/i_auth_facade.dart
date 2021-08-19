import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/entity/register_input.dart';
import 'package:digiresto/domain/auth/entity/register_status.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/auth/entity/user_profile.dart';
import 'package:digiresto/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, String>> getOtp({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, Option<UserAuth>>> getSignedInUser();
  Future<Either<AuthFailure, UserProfile>> getProfile(String token);
  Future<Either<AuthFailure, UserAuth>> loginPin({
    required PhoneNumber phoneNumber,
    required Pin pin,
  });
  Future<Either<AuthFailure, bool>> validateOtp({
    required PhoneNumber phoneNumber,
    required Otp otp,
  });
  Future<Either<AuthFailure, RegisterStatus>> register({
    required RegisterInput registerInput,
  });
  Future<Either<AuthFailure, Unit>> signOut();
  Future<void> changeUrl({required String url});
}
