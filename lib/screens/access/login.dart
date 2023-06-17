import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_helmet/controllers/login_controller.dart';
import 'package:smart_helmet/custom_widgets/app_progress_indicator.dart';
import 'package:smart_helmet/custom_widgets/basic_text_field.dart';
import 'package:smart_helmet/custom_widgets/phone_text_field.dart';
import 'package:smart_helmet/screens/access/register.dart';
import 'package:smart_helmet/utils/constants.dart';
import 'package:smart_helmet/utils/screen_info.dart';

import '../home/home.dart';

class Login extends StatelessWidget{

  final LoginController get = Get.put(LoginController());

  Login({super.key});

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
              const Text('Login to continue', style: TextStyle(color: kGrey),),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              PhoneTextField(onCountryChanged: (val){}, controller: get.phoneC),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              BasicTextField(controller: get.passwordC, hintText: 'Password', obscure: true,),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
              SizedBox(width: 250.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap:(){},
                      child: const Text('Forgot Password?', style: TextStyle(color: kPrimarySwatch, fontSize: 10.0),))
                ],
              ),),
              const Spacer(),
              Obx(
                ()=> Visibility(
                  visible: !get.progress.value,
                  child: SizedBox(
                    width: 260.0,
                    child: ElevatedButton(onPressed: (){Get.offAll(()=>Home(), transition: Transition.rightToLeft);},
                        child: const Text('Login')),
                  ),
                ),
              ),
              Obx(
                ()=> Visibility(
                  visible: get.progress.value,
                  child: const AppProgressIndicator()
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              InkWell(
                onTap: (){Get.to(()=>Register(), transition: Transition.downToUp);},
                child: RichText(text: const TextSpan(
                  children: [
                    TextSpan(text: 'Don\'t have an account? ', style: TextStyle(fontSize: 12, color: kBlack)),
                    TextSpan(text: 'Register Now', style: TextStyle(fontSize: 13, color: kPrimarySwatch, fontWeight: FontWeight.bold),),
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