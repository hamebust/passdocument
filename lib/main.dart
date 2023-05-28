import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/firebase_options.dart';
import 'package:passdocument/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:passdocument/src/utils/theme/theme.dart';

void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,        
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      //home: const ProfileScreen(),
      home: SplashScreen(),
      //home: const LoginScreen(),
    );
  }
}
 