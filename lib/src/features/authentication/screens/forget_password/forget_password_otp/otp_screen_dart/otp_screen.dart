import 'package:flutter/material.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle, 
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
            ),),
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 40.0,),
            const Text(
              "$tOtpMessage $tOurMail",
              textAlign: TextAlign.center,),
            const SizedBox(height: 40.0,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){ },
              //onSubmit: (code){ print("OTP is => $code");},
              focusedBorderColor: Colors.green.shade800,
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {}, child: const Text(tNext),
              ),
            ),
          ],
        ),
      ),      
    );
  }
}
