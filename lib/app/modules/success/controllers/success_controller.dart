import 'package:get/get.dart';
import 'package:ticketing_app/app/routes/app_pages.dart';

class SuccessController extends GetxController {
  //TODO: Implement SuccessController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    redirectToForm();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void redirectToForm() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.offAndToNamed(Routes.FORM);
    });
  }
}
