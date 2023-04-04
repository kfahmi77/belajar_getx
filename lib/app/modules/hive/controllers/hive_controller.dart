import 'package:get/get.dart';

class HiveController extends GetxController {
  //TODO: Implement HiveController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  @override
  void dispose() {
    Get.delete<HiveController>();
    super.dispose();
  }
}
