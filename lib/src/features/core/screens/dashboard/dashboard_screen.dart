import 'package:flutter/material.dart';
import 'package:passdocument/src/constants/sizes.dart';
import 'package:passdocument/src/constants/text_strings.dart';
import 'package:passdocument/src/features/core/screens/dashboard/widget/dashboard_app_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Variables
    final txtTheme = Theme.of(context).textTheme;
    final isDark1 = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: DashboarAppBar(isDark: isDark1,),

        body: SingleChildScrollView(
          child: Container(
            padding:  const EdgeInsets.all(tDashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tDashboardTitle, style: txtTheme.bodyMedium,),
                const SizedBox(height: tDashboardPadding,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

