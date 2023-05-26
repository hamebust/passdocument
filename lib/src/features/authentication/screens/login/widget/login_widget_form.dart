import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget_sheet.dart';
import 'package:passdocument/src/features/core/screens/dashboard/dashboard_screen.dart';

class LoginWidgetForm extends StatelessWidget {
  const LoginWidgetForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Form(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            const SizedBox(height: tFormHeight),
            //--FORGET PASSWORD BTN
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(tForgetPassword),
              ),
            ),
            //--LOGIN BTN
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {Get.to(() => const DashboardScreen());},
                child: Text(tLogin.toUpperCase()),
              ),
            )
          ],
        ),
      )),
    );
  }
}
