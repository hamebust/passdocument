import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/login/login_screen.dart';


class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

  return Form(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(tOr),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon( 
            icon: const Image(
              image: AssetImage(tLogoGoogleImage), 
              width: 20.0,),
            onPressed: () {}, 
            label: const Text(tSignUpWithGoogle),
          ),
        ),
        const SizedBox(height: tFormHeight ,),
        TextButton(
          onPressed: () {Get.to(() => const LoginScreen());}, 
          child: Text.rich(
              TextSpan(
                text: tSignUpAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                    text:tLogin,
                    style: TextStyle(color: Colors.blue) ,
                  )
                ])
              ),
        ),
      ],
      )

    );
  }
  }
