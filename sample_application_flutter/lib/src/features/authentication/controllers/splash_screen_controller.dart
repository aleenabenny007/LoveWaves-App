
import 'package:get/get.dart';
import 'package:sample_application_flutter/src/features/authentication/screens/onboarding/onboarding_screen.dart';
// import 'package:sample_application_flutter/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();


  RxBool animate = false.obs;


  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(()=>const OnBoardingScreen());
  }
}