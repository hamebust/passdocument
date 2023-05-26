import 'package:flutter/material.dart';
import 'package:passdocument/src/common_widgets/forms/header_form_widget.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/login/widget/login_widget_footer.dart';
import 'package:passdocument/src/features/authentication/screens/login/widget/login_widget_form.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen ({Key? key}) : super(key: key);
  
  @override
  Widget build (BuildContext context) {
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
                  title: tLoginTitle,
                  subtitle: tLoginSubTitle,
                ),
                /* -- Section 2 --*/
                LoginWidgetForm(),
                /* -- Section 3 --*/                
                LoginWidgetFooter(),
              ],    
            ),
          ),
        ),
      ),
    );
  }
}