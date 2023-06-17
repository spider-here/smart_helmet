import 'package:flutter/material.dart';
import 'package:smart_helmet/custom_widgets/action_container.dart';


class BasicTextField extends StatelessWidget{

  final bool obscure;
  final bool readOnly;
  final String hintText;
  final TextEditingController controller;

  const BasicTextField({super.key, required this.controller, required this.hintText, this.obscure = false, this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return ActionContainer(height: 45.0, width: 265.0,
      child: TextField(
        controller: controller,
        readOnly: readOnly,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(fontWeight: FontWeight.w300)
        ),
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.w500),
        obscureText: obscure,
      ),
    );
  }

}