import 'package:either_dart/either.dart';

import '../../app/core/error/failures.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, User>> getUser();
  Future<Either<Failure, User>> signinWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, bool>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> createUserProfile({
    String? email,
    String? phone,
    String? picture,
    required String firstName,
    required String lastName,
  });
}
