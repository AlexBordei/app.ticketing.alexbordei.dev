import 'package:get/get.dart';

import '../controllers/success_controller.dart';

class SuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SuccessController>(
      SuccessController(),
    );
  }
}
