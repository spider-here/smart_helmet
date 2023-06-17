import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:smart_helmet/custom_widgets/action_container.dart';
import 'package:smart_helmet/utils/constants.dart';

class PhoneTextField extends StatelessWidget{

  final bool readOnly;
  final Function onCountryChanged;
  final TextEditingController controller;

  const PhoneTextField({super.key, required this.onCountryChanged, required this.controller,  this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ActionContainer(height: 45.0, width: 100.0,
          child: CountryCodePicker(
            backgroundColor: Colors.amber,
            onChanged: (countryCode){
              onCountryChanged(countryCode);
            },
            initialSelection: countryCodeInitialSelection,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 5.0)),
        ActionContainer(height: 45.0, width: 160.0,
          child: TextField(
            controller: controller,
            readOnly: readOnly,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Phone Number',
              hintStyle: TextStyle(fontWeight: FontWeight.w300)
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w500),
            keyboardType: TextInputType.number,
          ),
        )
      ],
    );
  }

}