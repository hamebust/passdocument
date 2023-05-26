import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/core/screens/dashboard/dashboard_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton( onPressed: (){{Get.to(()=>const DashboardScreen());}},icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(tPrfile, style: Theme.of(context).textTheme.headlineMedium),
        actions: [IconButton(onPressed: (){}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage(tHenryProfileImage)),
                ),
              ),
              const SizedBox(height: 10,),
              Text(tProfileHeading, style: Theme.of(context).textTheme.labelMedium,),
              Text(tProfileSubHeading, style: Theme.of(context).textTheme.bodyMedium,),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){},
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

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    required this.title,
    required this.icon,
    required this.onPress,
             this.endIcon = true,
             this.textColor,
              

    super.key,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? tWhiteColor : Colors.green.shade900;


    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(icon, color: iconColor,),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor),),
      trailing: endIcon? Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(LineAwesomeIcons.angle_right, size: 18.0 , color: Colors.grey,)) : null,
    );
  }
}
