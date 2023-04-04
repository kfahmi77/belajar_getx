import 'package:get/get.dart';

import '../controllers/moor_controller.dart';

class MoorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoorController>(
      () => MoorController(),
    );
  }
}
