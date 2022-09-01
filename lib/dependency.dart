import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../domain/usecases/authentication/get_user_use_case.dart';
import '../../domain/usecases/authentication/register_use_case.dart';
import '../../domain/usecases/authentication/signin_email_password_use_case.dart';
import 'app/core/platform/network_info.dart';
import 'data/providers/network/apis/authentication_api.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'domain/repositories/auth_repository.dart';
import 'presentation/authentication/auth_service.dart';

class DenpendencyCreator {
  static Future<void> init() async {
    await GetStorage.init();
    Get.lazyPut(() => GetStorage());
    Get.lazyPut(() => InternetConnectionChecker());
    Get.lazyPut<NetworkInfo>(() => NetworkInfoImpl(Get.find()));

    Get.lazyPut<AuthenticationRemoteDataSource>(
      () => AuthenticationRemoteDataSourceImpl(),
    );

    Get.lazyPut<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        networkInfo: Get.find(),
        api: Get.find(),
      ),
    );

    Get.lazyPut(() => GetUserUseCase(Get.find()));
    Get.lazyPut(() => RegisterUserUseCase(Get.find()));
    Get.lazyPut(() => SigninWithEmailPasswordUseCase(Get.find()));

    Get.lazyPut<AuthService>(
      () => AuthService(
        getUserUseCase: Get.find(),
        registerUserUseCase: Get.find(),
        signinWithEmailPasswordUseCase: Get.find(),
      ),
    );
  }
}
