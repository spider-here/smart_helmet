
import 'package:flutter/material.dart';
import 'package:smart_helmet/custom_widgets/basic_text_field.dart';
import 'package:smart_helmet/utils/constants.dart';

class StepTwo extends StatelessWidget{

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final Function onNext;
  final Function onBack;

  const StepTwo({super.key, required this.passwordController, required this.confirmPasswordController,
    required this.onNext, required this.onBack});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: ()=>onBack(),
                  child: const Icon(Icons.arrow_back, color: kPrimarySwatch,),
                ),
                const Text('Step 2 of 3', style: TextStyle(color: kGrey),),
              ],
            ),
            BasicTextField(controller: passwordController, hintText: 'Password', obscure: true,),
            BasicTextField(controller: confirmPasswordController, hintText: 'Retype Password', obscure: true,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(onPressed: ()=>onNext(),
                  foregroundColor: kWhite, child: const Icon(Icons.arrow_forward,),)
              ],
            )
          ],
        ),
      ),
    );
  }

}