import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:passdocument/src/constants/colors.dart';

class OnBoardingSreen extends StatelessWidget{  
  const OnBoardingSreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              // Page 01 ----------------------------------------------------------
              Container(color: tOnBoardingPage01Color),
              // Page 02 ----------------------------------------------------------
              Container(color: tOnBoardingPage02Color),
              // Page 03 ----------------------------------------------------------
              Container(color: tOnBoardingPage03Color),
            ],
          )
        ],
      ),
    );
  }
} 
