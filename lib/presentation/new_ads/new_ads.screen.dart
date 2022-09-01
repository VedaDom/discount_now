import 'package:discount_now/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/ads_item.dart';
import '../widgets/text_field.dart';
import 'controllers/new_ads.controller.dart';

class NewAdsScreen extends GetView<NewAdsController> {
  const NewAdsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Ads',
          // style: TextStyle(
          //   color: context.theme.primaryColor,
          // ),
        ),
        // iconTheme: IconThemeData(
        //   color: context.theme.primaryColor,
        // ),
        // backgroundColor: Colors.transparent,
        // elevation: 0,
      ),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.all(32),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: context.width * 0.5,
                  child: Stack(
                    children: [
                      const AdsItem(
                        name: "Strawberries",
                        percentage: 20,
                        endingAt: "Ending Today",
                        location: "Kimironko, Kigali",
                        price: 23000,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: const [
                Expanded(
                  child: KTextField(
                    title: "Campany",
                    hintText: "Your campany name",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(
                  child: KTextField(
                    title: "Name",
                    hintText: "Your product name",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: controller.selectedCategory.value,
                  onChanged: (String? value) {
                    if (value != null) {
                      controller.selectedCategory.value = value;
                    }
                  },
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: context.theme.primaryColor,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    fillColor: const Color(0xFFEFF2F5),
                    filled: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(
                  child: KTextField(
                    title: "Discount",
                    hintText: "Your discount in percentage. Eg: 8%",
                    suffixText: "%",
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(
                  child: KTextField(
                    title: "Location",
                    hintText: "Your store location",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(
                  child: KTextField(
                    title: "Time",
                    hintText: "How long do you want your ads to run",
                    suffixText: "Hours",
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
                      Get.toNamed(Routes.PAYMENT);
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
                      "Submit",
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
    );
  }
}
