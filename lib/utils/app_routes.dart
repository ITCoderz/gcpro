import 'package:gcpro/views/login/view/login_view.dart';
import 'package:gcpro/views/onboarding/view/main_onboarding_view.dart';
import 'package:gcpro/views/signup/view/signup_view.dart';
import 'package:gcpro/views/splash/view/splash_view.dart';
import 'package:get/get.dart';

class AppRoutes {
   static String splash = "/";
   static String mainOnboarding = "/mainOnboarding";
   static String login = "/login";
   static String signup = "/signup";




  static List<GetPage> routes = [
   GetPage(name: splash, page: () => const SplashView()),
   GetPage(name: mainOnboarding, page: () => const MainOnboardingView()),
   GetPage(name: login, page: () => const LoginView()),
   GetPage(name: signup, page: () => const SignupView()),



  ];
}
