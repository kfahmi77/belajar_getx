import 'package:get/get.dart';

import '../controllers/sqflite_controller.dart';

class SqfliteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SqfliteController>(
      () => SqfliteController(),
    );
  }
}
