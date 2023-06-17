import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController phoneC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  RxBool progress = false.obs;
}