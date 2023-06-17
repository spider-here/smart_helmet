import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_helmet/screens/access/splash.dart';
import 'package:smart_helmet/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    title: 'Smart Helmet',
    home: const Splash(),
    theme: ThemeData(
      canvasColor: kWhite,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: kWhite,
        primarySwatch: kPrimarySwatch,
        accentColor: kAccentColor,
        errorColor: kRed
      )
    ),
  ));
}