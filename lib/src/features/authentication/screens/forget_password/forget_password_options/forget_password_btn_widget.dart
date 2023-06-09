
import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    required this.fpBtnIcon,
    required this.fpTitle,
    required this.fpSubTitle,
    required this.onTap,

    Key? key,
    
  }) : super (key: key);

  final IconData fpBtnIcon;
  final String fpTitle, fpSubTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade700,
        ),
        child: Row(
          children: [
            Icon(fpBtnIcon, size: 50.0,),
            const SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fpTitle,style: Theme.of(context).textTheme.headlineLarge,),
                Text(fpSubTitle, style: Theme.of(context).textTheme.headlineLarge,),
              ],
            ),
          ],
        ),                            
      ),
    );
  }
}
