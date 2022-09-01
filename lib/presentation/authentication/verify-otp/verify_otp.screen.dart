import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../infrastructure/navigation/routes.dart';
import 'controllers/verify_otp.controller.dart';

class VerifyOtpScreen extends GetView<VerifyOtpController> {
  const VerifyOtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          // textScaleFactor: 1,
          // style: TextStyle(
          //   color: context.theme.primaryColor,
          // ),
        ),
        // iconTheme: IconThemeData(
        //   color: context.theme.primaryColor,
        // ),
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: SizedBox(
          height: context.height - 167,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Container()),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "The verifiction code has been sent to ${controller.phone.replaceAll(" ", "")}",
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              PinCodeTextField(
                appContext: context,
                enablePinAutofill: true,
                pastedTextStyle: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                length: 6,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 45,
                  fieldWidth: 45,
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(4),
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                errorAnimationController: controller.errorController,
                controller: controller.otpController,
                keyboardType: TextInputType.number,
                onChanged: controller.setOtpValue,
              ),
              const SizedBox(height: 20),
              Expanded(child: Container()),
              if (controller.isLoading.value)
                const Center(child: CircularProgressIndicator()),
              if (!controller.isLoading.value)
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.PROFILE);
                        },
                        style: OutlinedButton.styleFrom(
                          // elevation: 0,
                          backgroundColor: context.theme.primaryColor,
                          padding: const EdgeInsets.symmetric(
                            vertical: 13,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Verify',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
