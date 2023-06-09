import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/controllers/signup_controller.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Full Name
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label:  Text(tFullName),    border: OutlineInputBorder(),     prefixIcon: Icon((Icons.person_outline_rounded),),
              ),
            ),
            const SizedBox(height: tFormHeight,),
            //Email
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label:  Text(tEmail),       border: OutlineInputBorder(),     prefixIcon: Icon((Icons.email_outlined),),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            //Phone No
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label:  Text(tPhoneNo),     border: OutlineInputBorder(),     prefixIcon: Icon((Icons.numbers_outlined),),
              ),
            ),
            const SizedBox(height: tFormHeight,),
            //Password
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label:  Text(tPassword),    border: OutlineInputBorder(),     prefixIcon: Icon((Icons.password_outlined),),
              ),
            ),
            const SizedBox(height: tFormHeight,),
            //Bottom
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                  }
                },
                child: const Text(tSignup),
              ),
            ),
        ],
      )),
    );
  }
}