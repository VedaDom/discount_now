import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpController extends GetxController {
  TextEditingController otpController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  final formKey = GlobalKey<FormState>();

  final otpValue = "".obs;
  final isLoading = false.obs;
  final String phone = Get.arguments;

  @override
  void onInit() {
    errorController = StreamController<ErrorAnimationType>();
    super.onInit();
  }

  @override
  void onClose() {
    errorController!.close();
    super.onClose();
  }

  void setOtpValue(String value) => otpValue.value = value;
}
