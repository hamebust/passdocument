import 'package:flutter/material.dart';
import 'package:passdocument/src/common_widgets/forms/header_form_widget.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:passdocument/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* -- Section 1 --*/
                HeaderFormWidget(
                  image: tWelcomeImage,
                  title: tSignUpTitle,
                  subtitle: tSignUpSubTitle,
                ),
                /* -- Section 2 --*/
                SignUpFormWidget(),
                /* -- Section 3 --*/
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
