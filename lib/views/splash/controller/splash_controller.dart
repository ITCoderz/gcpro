import 'package:gcpro/utils/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
   @override
  void onReady() {
    Future.delayed(
      const Duration(seconds: 3),
      () =>  Get.offNamed(AppRoutes.mainOnboarding),
    );

    super.onReady();
  }
  
}