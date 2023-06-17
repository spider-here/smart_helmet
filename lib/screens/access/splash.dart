import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_helmet/screens/access/login.dart';

import '../../utils/screen_info.dart';

class Splash extends StatelessWidget{
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.background,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: AnimatedSplashScreen(splash: Image.asset("assets/images/logo.png",),
        nextScreen: Login(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: screenWidth(context)/3.4,
        duration: 4,
        animationDuration: const Duration(seconds: 2),
      ),
    );
  }

}