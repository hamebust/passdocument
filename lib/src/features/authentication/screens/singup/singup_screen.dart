import 'package:flutter/material.dart';
import 'package:passdocument/src/common_widgets/forms/header_form_widget.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/singup/widgets/singup_widget_footer.dart';
import 'package:passdocument/src/features/authentication/screens/singup/widgets/singup_widget_form.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

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
                  title: tSingUpTitle,
                  subtitle: tSingUpSubTitle,
                ),
                /* -- Section 2 --*/
                SingUpWidgetForm(),
                /* -- Section 3 --*/
                SingUpWidgetFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
