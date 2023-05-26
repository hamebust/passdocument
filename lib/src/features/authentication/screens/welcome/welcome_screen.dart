import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/login/login_screen.dart';
import 'package:passdocument/src/features/authentication/screens/singup/singup_screen.dart';

class WelcomeSreen extends StatelessWidget{  
  const WelcomeSreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [          Image(image: const AssetImage(tWelcomeImage), height: height * 0.2),
          Column(
            children: [
              Text(tWelcomeTitle01, style: Theme.of(context).textTheme.titleLarge,),
              Text(tWelcomeSubTitle01, style: Theme.of(context).textTheme.headlineSmall,),
              Text(tWelcomeText01, style: Theme.of(context).textTheme.bodyMedium,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              // LOGIN ------------------
              Expanded(
                child: OutlinedButton(
                  onPressed: () {Get.to(() => const LoginScreen());},
                  child: Text(tLogin.toUpperCase())
                )
              ),
              //Space ------------------
              const SizedBox(width: 10),
              //SINGUP ------------------
              Expanded(
                child: ElevatedButton(
                  onPressed: (){Get.to(() => const SingUpScreen());},
                  child: Text(tSingup.toUpperCase())
                ),
              ),
              const SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
} 
