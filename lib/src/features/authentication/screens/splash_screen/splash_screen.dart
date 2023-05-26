import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/controllers/splash_screen_controller.dart';
 
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

    @override 
  Widget build(BuildContext context) {
    splashController.startAnimation();
    var height = MediaQuery.of(context).size.height;
        return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: splashController.animate.value ? -30 : 0,
            left: splashController.animate.value ? -30 : 0,
            //This child take the image of lib\src\constants\image_strings.dart
              child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,               
              ),              
            ),
          ),          
          Center(          
            child: AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : 0, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(tAppName, style: Theme.of(context).textTheme.headlineMedium,),
                  Text(tAppTagLine, style: Theme.of(context).textTheme.headlineSmall,),
                ],
              ),                       
            ),
          ),
          Center(
            child: Positioned(
              bottom: 80,
              child: Image(image: const AssetImage(tSplashImage), height: height * 0.6),
            ),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,               
              ),
            )
          ),
        ]
      ),        
    );              
  }
}
  