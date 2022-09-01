import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../data/models/user_model.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/authentication/get_user_use_case.dart';
import '../../domain/usecases/authentication/register_use_case.dart';
import '../../domain/usecases/authentication/signin_email_password_use_case.dart';

class AuthService extends GetxService {
  final GetUserUseCase _getUserUseCase;
  final RegisterUserUseCase _registerUserUseCase;
  final SigninWithEmailPasswordUseCase _signinWithEmailPasswordUseCase;

  var user = Rx<User?>(null);

  final _box = Get.find<GetStorage>();

  @override
  void onInit() {
    final userJsonData = _box.read("user");
    if (userJsonData != null) {
      user.value = UserModel.fromJson(userJsonData);
    }
    super.onInit();
  }

  AuthService({
    required GetUserUseCase getUserUseCase,
    required RegisterUserUseCase registerUserUseCase,
    required SigninWithEmailPasswordUseCase signinWithEmailPasswordUseCase,
  })  : _getUserUseCase = getUserUseCase,
        _registerUserUseCase = registerUserUseCase,
        _signinWithEmailPasswordUseCase = signinWithEmailPasswordUseCase;

  Future<User?> signinWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final response = await _signinWithEmailPasswordUseCase(
      SigninWithEmailPasswordParams(
        email: email,
        password: password,
      ),
    );
    if (response.isRight) {
      user.value = response.right;
      await _box.write("user", (response.right as UserModel).toJson());
      return user.value;
    }
    return null;
  }

  Future<bool> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final response = await _registerUserUseCase(
      RegisterUserParams(
        email: email,
        password: password,
      ),
    );
    if (response.isRight) {
      // user.value = response.right;
      return true;
    }
    return false;
  }

  Future<User?> currentUser() async {
    final response = await _getUserUseCase();
    if (response.isRight) {
      user.value = response.right;
      _box.write("user", (response.right as UserModel).toJson());
      return response.right;
    }
    return null;
  }
}
