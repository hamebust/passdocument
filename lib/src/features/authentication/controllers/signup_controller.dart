import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
    static SignUpController get instance => Get.find();

    //TextField controllers to get data fron TextFields fron SignUpScreen
    final email         = TextEditingController();
    final password      = TextEditingController(); 
    final fullName      = TextEditingController();
    final phoneNo       = TextEditingController();



}