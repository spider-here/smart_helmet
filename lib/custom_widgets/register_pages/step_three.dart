
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_helmet/utils/constants.dart';

class StepThree extends StatelessWidget{

  final Function onOtpFieldChanged;
  final Function onNext;
  final Function onBack;

  const StepThree({super.key, required this.onOtpFieldChanged,
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
                const Text('Step 3 of 3', style: TextStyle(color: kGrey),),
              ],
            ),
            const Text('Enter the OTP code sent to your number.'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: PinCodeTextField(appContext: context, length: 6, onChanged: (change){
                onOtpFieldChanged(change);
              },
                animationType: AnimationType.scale,
                animationDuration: const Duration(milliseconds: 300),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5.0),
                  fieldHeight: 40,
                  fieldWidth: 30,
                  fieldOuterPadding: EdgeInsets.zero
                ),),
            ),
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