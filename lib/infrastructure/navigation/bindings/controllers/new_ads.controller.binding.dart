import 'package:get/get.dart';

import '../../../../presentation/new_ads/controllers/new_ads.controller.dart';

class NewAdsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAdsController>(
      () => NewAdsController(),
    );
  }
}
