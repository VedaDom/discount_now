import 'package:either_dart/either.dart';

import '../../../app/core/error/failures.dart';
import '../../../app/core/usecases/no_param_usecase.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

class GetUserUseCase extends NoParamUseCase<User> {
  final AuthenticationRepository _repo;
  GetUserUseCase(this._repo);

  @override
  Future<Either<Failure, User>> call() {
    return _repo.getUser();
  }
}
