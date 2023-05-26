import 'package:flutter/material.dart';
//This widget is the Header of
//LoginScreen - lib\src\features\authentication\screens\login\login_screen.dart
//SingUpScreen - lib\src\features\authentication\screens\singup\singup_screen.dart


class HeaderFormWidget extends StatelessWidget {
  const HeaderFormWidget ({Key? key,
  //Solicita o hace el requerimiento de info a las páginas implicadas
  //LoginScreen y SingUpScreen
           this.imageColor,
           this.heightBetween,
  required this.image,
  required this.title,
  required this.subtitle,  
           this.imageHeight = 0.2,
           this.textAlign,
           this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);
  //recepción de la data en las variables
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image,title,subtitle;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image), 
          height: size.height * 0.2,),
        Text(title,                           style: Theme.of(context).textTheme.displayLarge),
        Text(subtitle, textAlign: textAlign,  style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}
