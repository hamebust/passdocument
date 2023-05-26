import 'package:get/get.dart';
import 'package:passdocument/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  
  RxBool animate = false.obs;
  
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.to(const WelcomeSreen());
  }
}