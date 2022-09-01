import 'package:discount_now/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Profile",
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
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Text(
                          "VD",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: context.width - 32,
                  child: const Text(
                    "Nsengimana Veda Dominique",
                    style: TextStyle(
                      fontSize: 21,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    "nsengimanavedadom@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Material(
            color: Colors.white,
            elevation: 5,
            child: Column(
              children: [
                ListTile(
                  title: const Text("Manage Ads"),
                  onTap: () {
                    Get.toNamed(Routes.ADS);
                  },
                ),
                const Divider(
                  height: 0,
                ),
                ListTile(
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  onTap: () async {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
