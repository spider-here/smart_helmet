import 'package:flutter/material.dart';
import 'package:smart_helmet/custom_widgets/basic_text_field.dart';
import 'package:smart_helmet/custom_widgets/phone_text_field.dart';
import 'package:smart_helmet/utils/constants.dart';

class StepOne extends StatelessWidget{

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final Function onCountryChanged;
  final Function onNext;

  const StepOne({super.key, required this.nameController, required this.phoneController,
    required this.onCountryChanged, required this.onNext,});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: kGreyOutline, width: 1.0)
        ),
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Step 1 of 3', style: TextStyle(color: kGrey),),
            BasicTextField(controller: nameController, hintText: 'Full Name',),
            PhoneTextField(onCountryChanged: (val){onCountryChanged(val);},
                controller: phoneController),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(onPressed: (){onNext();},
                foregroundColor: kWhite, child: const Icon(Icons.arrow_forward,),)
              ],
            )
          ],
        ),
      ),
    );
  }

}