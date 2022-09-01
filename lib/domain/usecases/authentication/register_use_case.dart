import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../../../app/core/error/failures.dart';
import '../../../app/core/usecases/pram_usecase.dart';
import '../../repositories/auth_repository.dart';

class RegisterUserUseCase extends ParamUseCase<bool, RegisterUserParams> {
  final AuthenticationRepository _repo;
  RegisterUserUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(RegisterUserParams params) {
    return _repo.createUserWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}

class RegisterUserParams extends Equatable {
  final String email;
  final String password;

  const RegisterUserParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
