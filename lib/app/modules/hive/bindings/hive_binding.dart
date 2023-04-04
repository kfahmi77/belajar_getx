import 'package:get/get.dart';

import '../controllers/hive_controller.dart';

class HiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HiveController>(
      () => HiveController(),
    );
  }
}
