import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../infrastructure/navigation/routes.dart';
import '../../widgets/text_field.dart';
import 'controllers/signin.controller.dart';

class SigninScreen extends GetView<SigninController> {
  const SigninScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signin"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: SizedBox(
          height: context.height - 167,
          child: Column(
            children: [
              Expanded(child: Container()),
              Text(
                "Welcome to Descount Now!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: context.theme.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(child: Container()),
              const Text(
                "To continue exploring, please sign in. \n\n* You will be able to create and manage your ads.\n\n* You will be able to save your favorite ads and see them in your profile.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: KTextField(
                      controller: controller.phoneController,
                      autofocus: true,
                      title: "Phone",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixText: "+250 ",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(
                          Routes.VERIFY_OTP,
                          arguments: "+250784190215",
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        // elevation: 0,
                        backgroundColor: context.theme.primaryColor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 16,
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
