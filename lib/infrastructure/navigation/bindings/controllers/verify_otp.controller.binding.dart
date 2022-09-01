import 'package:get/get.dart';

import '../../../../presentation/authentication/verify-otp/controllers/verify_otp.controller.dart';

class VerifyOtpControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyOtpController>(
      () => VerifyOtpController(),
    );
  }
}
