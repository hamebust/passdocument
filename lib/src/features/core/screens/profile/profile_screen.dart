import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/core/screens/profile/profile_update_Screen.dart';
import 'package:passdocument/src/features/core/screens/profile/widget/Profile_menu/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton( onPressed: (){{Get.back();}},icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(tProfile, style: Theme.of(context).textTheme.headlineMedium),
        actions: [IconButton(onPressed: (){}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage(tHenryProfileImage)),
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: tPrimaryColor),
                      child: const Icon(LineAwesomeIcons.alternate_pencil, color: Colors.black, size: 20),
                    ),
                  )

                ],
              ),
              const SizedBox(height: 10,),
              Text(tProfileHeading, style: Theme.of(context).textTheme.labelMedium,),
              Text(tProfileSubHeading, style: Theme.of(context).textTheme.bodyMedium,),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){{Get.to(()=>const ProfileUpdateScreen());}},
                  style: ElevatedButton.styleFrom(side: BorderSide.none, shape: const StadiumBorder()), 
                  child: const Text(tEditProfile, ),                  
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              
              // MENU
              ProfileMenuWidget(title:"Setting"         ,icon: LineAwesomeIcons.cog                 ,           onPress: (){},),
              ProfileMenuWidget(title:"Billing Details" ,icon: LineAwesomeIcons.wallet              ,           onPress: (){},),
              ProfileMenuWidget(title:"User Management" ,icon: LineAwesomeIcons.user_check          ,           onPress: (){},),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title:"Information"     ,icon: LineAwesomeIcons.info                ,           onPress: (){},),
              ProfileMenuWidget(title:"Logout"          ,icon: LineAwesomeIcons.alternate_sign_out  ,           onPress: (){},  textColor: Colors.red, endIcon: false, ),

            ],
          ),
        ),
      ), 
    );
  }
}


