import 'package:flutter/cupertino.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:get/get.dart';

class EmergencyContactController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  getContact() async {
        await FlutterContactPicker.pickPhoneContact().then((value){
          final PhoneContact contact = value;
          if(contact.phoneNumber!.number!.isNotEmpty){
            phoneController.text = contact.phoneNumber!.number!;
          }
          if(contact.fullName!.isNotEmpty){
            nameController.text = contact.fullName!;
          }
        });
  }

}