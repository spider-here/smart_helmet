import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_helmet/controllers/emergency_contact_controller.dart';
import 'package:smart_helmet/utils/screen_info.dart';

import '../../custom_widgets/basic_text_field.dart';
import '../../utils/constants.dart';

class EmergencyContact extends StatelessWidget{

  final EmergencyContactController get = Get.put(EmergencyContactController());

  EmergencyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contact', style: TextStyle(color: kPrimarySwatch),),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Emergency Contact is crucial for your safety.'
                ' It is the first person we will get'
                ' in touch with in an emergency/accident situation.',
              style: TextStyle(color: kGrey),),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            BasicTextField(controller: get.nameController, hintText: 'Full Name',),
        const Padding(padding: EdgeInsets.only(top: 20.0)),
      BasicTextField(controller: get.phoneController,
              hintText: 'Phone Number',),
            TextButton(onPressed: () {
              get.getContact();
            }, child: const Text('Pick from contacts')),
            const Spacer(),
            SizedBox(
              width: screenWidth(context),
                child: ElevatedButton(onPressed: (){Get.back();}, child: const Text('Save')))
          ],
        ),
      ),
    );
  }

}
