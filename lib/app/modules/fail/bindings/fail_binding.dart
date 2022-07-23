import 'package:get/get.dart';

import '../controllers/fail_controller.dart';

class FailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FailController>(
      FailController(),
    );
  }
}
