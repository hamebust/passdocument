
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/image_strings.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/core/screens/profile/profile_screen.dart';

class DashboarAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboarAppBar({
    super.key, 
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){},icon: Icon(Icons.menu, color: isDark ? tWhiteColor : tDarkColor,),),
      title: Text(tAppName, style: Theme.of(context).textTheme.headlineMedium,),
      centerTitle: true,
      elevation: 0,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 5, top:5, left: 5, bottom: 5,),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: tCardBgColor.withOpacity(0.5),),
          child: IconButton(onPressed: (){{Get.to(()=>const ProfileScreen());}}, icon: const Image(image: AssetImage(tUserProfileImage))),
        ),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
