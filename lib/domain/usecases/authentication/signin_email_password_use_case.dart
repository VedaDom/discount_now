import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../../../app/core/error/failures.dart';
import '../../../app/core/usecases/pram_usecase.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

class SigninWithEmailPasswordUseCase
    extends ParamUseCase<User, SigninWithEmailPasswordParams> {
  final AuthenticationRepository _repo;
  SigninWithEmailPasswordUseCase(this._repo);

  @override
  Future<Either<Failure, User>> call(SigninWithEmailPasswordParams params) {
    return _repo.signinWithEmailAndPassword(params.email, params.password);
  }
}

class SigninWithEmailPasswordParams extends Equatable {
  final String email;
  final String password;

  const SigninWithEmailPasswordParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
