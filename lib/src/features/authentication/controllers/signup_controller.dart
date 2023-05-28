import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passdocument/src/repository/authentication_repository/authentication_repository.dart';

class SignUpController extends GetxController {
    static SignUpController get instance => Get.find();

    //TextField controllers to get data fron TextFields fron SignUpScreen
    final email         = TextEditingController();
    final password      = TextEditingController(); 
    final fullName      = TextEditingController();
    final phoneNo       = TextEditingController();

    //Call this Funtion from Design & it will do the rest
    void registerUser (String email, String password) {
      AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    }

}