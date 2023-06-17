import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_helmet/controllers/profile_controller.dart';
import 'package:smart_helmet/custom_widgets/profile_text_tile.dart';

import '../../utils/constants.dart';
import '../../utils/screen_info.dart';

class Profile extends StatelessWidget{

  final ProfileController get = Get.put(ProfileController());

  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: kPrimarySwatch),),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: kPrimarySwatch),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.background,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            ProfileTextTile(label: 'Name', data: 'Your name here', onTap: (){}),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            ProfileTextTile(label: 'Phone Number', data: 'Your phone number here', onTap: (){}),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            ProfileTextTile(label: 'Password', data: '******', onTap: (){}),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            const Spacer(),
            SizedBox(
                width: screenWidth(context),
                child: ElevatedButton(onPressed: (){Get.back();}, child: const Text('Done')))
          ],
        ),
      ),
    );
  }

}