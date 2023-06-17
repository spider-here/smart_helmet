import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_helmet/custom_widgets/register_pages/step_three.dart';

import '../../controllers/register_controller.dart';
import '../../custom_widgets/register_pages/step_one.dart';
import '../../custom_widgets/register_pages/step_two.dart';
import '../../utils/constants.dart';
import '../../utils/screen_info.dart';
import '../home/home.dart';

class Register extends StatelessWidget{

  final RegisterController get = Get.put(RegisterController());

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: const IconThemeData(color: kPrimarySwatch),
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).colorScheme.background,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth(context),
            height: screenHeight(context),
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 50.0)),
                SizedBox(
                    width: screenWidth(context),
                    child: Center(
                        child: Image.asset("assets/images/logo.png", width: screenWidth(context)/2,))),
                const Spacer(),
                const Text('Register', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                SizedBox(
                  height: screenHeight(context)/2.5,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: get.pageController,
                    children: [
                      StepOne(nameController: get.nameC, phoneController: get.phoneC,
                        onCountryChanged: (){}, onNext: (){get.pageController.jumpToPage(1);},),
                      StepTwo(passwordController: get.passC, confirmPasswordController: get.rePassC,
                          onNext: (){get.pageController.jumpToPage(2);}, onBack: (){get.pageController.jumpToPage(0);}),
                      StepThree(onOtpFieldChanged: (change){}, onNext: (){Get.offAll(()=>Home(), transition: Transition.rightToLeft);},
                          onBack: (){get.pageController.jumpToPage(1);})
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){Get.back();},
                  child: RichText(text: const TextSpan(
                      children: [
                        TextSpan(text: 'Already have an account? ', style: TextStyle(fontSize: 12, color: kBlack)),
                        TextSpan(text: 'Login Now', style: TextStyle(fontSize: 13, color: kPrimarySwatch, fontWeight: FontWeight.bold),),
                      ]
                  )),
                ),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
              ],
            ),
          ),
        )
    );
  }
  
}