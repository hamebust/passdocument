import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/firebase_options.dart';
//import 'package:passdocument/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:passdocument/src/repository/authentication_repository/authentication_repository.dart';
import 'package:passdocument/src/utils/theme/theme.dart';


void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebasePhoneAuthProvider(
      child: GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,        
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        //home: SplashScreen(),
        home: const CircularProgressIndicator(),
      ),
    );
  }
}
 