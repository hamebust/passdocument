import 'package:flutter/material.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text(tFullName),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                (Icons.person_outline_rounded),
              ),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(tEmail),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                (Icons.email_outlined),
              ),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(tPhoneNo),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                (Icons.numbers_outlined),
              ),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(tPassword),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                (Icons.password_outlined),
              ),
            ),
          ),
          const SizedBox(
            height: tFormHeight,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(tSignup),
            ),
          ),
        ],
      )),
    );
  }
}