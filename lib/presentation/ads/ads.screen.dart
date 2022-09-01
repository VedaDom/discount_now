import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maps_launcher/maps_launcher.dart';

import '../../app/gen/assets.gen.dart';
import '../../infrastructure/navigation/routes.dart';
import '../widgets/ads_item.dart';
import 'controllers/ads.controller.dart';

class AdsScreen extends GetView<AdsController> {
  const AdsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Ads',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.NEW_ADS);
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.post_add_rounded),
      ),
      body: GridView.count(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 1 / 1.17,
        children: [
          InkWell(
            onTap: () async {
              MapsLauncher.launchQuery('KG11Ave');
            },
            child: AdsItem(
              image: Assets.images.lotsGourmet1.image(
                height: 111,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              name: "Strawberries",
              percentage: 7,
              endingAt: "Ending Today",
              location: "Kimironko, Kigali",
              price: 23000,
            ),
          ),
          InkWell(
            onTap: () async {
              MapsLauncher.launchQuery('KG11Ave');
            },
            child: AdsItem(
              image: Assets.images.drink1.image(
                height: 111,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              name: "Strawberries",
              percentage: 9,
              endingAt: "Ending Today",
              location: "Kimironko, Kigali",
              price: 23000,
            ),
          ),
          InkWell(
            onTap: () async {
              MapsLauncher.launchQuery('KG11Ave');
            },
            child: AdsItem(
              image: Assets.images.food1.image(
                height: 111,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              name: "Strawberries",
              percentage: 30,
              endingAt: "Ending Today",
              location: "Kimironko, Kigali",
              price: 23000,
            ),
          ),
        ],
      ),
    );
  }
}
