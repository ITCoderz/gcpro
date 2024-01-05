import 'package:gcpro/views/login/controller/login_controller.dart';
import 'package:gcpro/views/onboarding/controller/onboarding_controller.dart';
import 'package:gcpro/views/signup/controller/signup_controller.dart';
import 'package:gcpro/views/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => OnboardingController(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => SignupController(), fenix: true);
  }
}
