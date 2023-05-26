import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:passdocument/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:passdocument/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                  context: context, 
                  builder: (context) => Container(
                    padding: const EdgeInsets.all(tDefaultSize),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.displayMedium,),
                        Text(tForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
                        const SizedBox(height: 30.0,),
                        ForgetPasswordBtnWidget(
                          fpBtnIcon: Icons.mail_outline_rounded,
                          fpTitle:tEmail,
                          fpSubTitle:tFPResetViaEmail, 
                          onTap: () {
                            Navigator.pop(context);
                            Get.to(()=> const ForgetPasswordMailScreen());
                          },
                        ),
                        const SizedBox(height: 20.0,),
                        ForgetPasswordBtnWidget(
                          fpBtnIcon: Icons.mobile_friendly_rounded,
                          fpTitle:tPhone,
                          fpSubTitle:tFPResetViaPhone, 
                          onTap: () {
                            Navigator.pop(context);
                            Get.to(()=> const ForgetPasswordPhoneScreen());
                          },
                        ),
                        
                      ],
                    ),
                  ),
                );
  }
}