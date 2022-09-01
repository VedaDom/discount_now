import 'package:get/get.dart';

import '../../../../presentation/ads/controllers/ads.controller.dart';

class AdsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdsController>(
      () => AdsController(),
    );
  }
}
