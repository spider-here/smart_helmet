import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  RxInt pageIndex = 0.obs;

  TextEditingController nameC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController rePassC = TextEditingController();
  PageController pageController = PageController();
}