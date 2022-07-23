import 'package:get/get.dart';
import 'package:ticketing_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  var headingOpacity = 0.obs;
  var footerOpacity = 0.obs;
  var logoOpacity = 0.obs;
  var isLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    loadAnimation();
    loadApp();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> loadAnimation() async {
    headingOpacity.value = 1;
    logoOpacity.value = 1;

    await Future.delayed(
      const Duration(milliseconds: 1000),
      () => footerOpacity.value = 1,
    );
  }

  void loadApp() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.offAndToNamed(Routes.FORM);
    });
  }
}
