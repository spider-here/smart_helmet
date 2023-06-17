import 'package:flutter/material.dart';
import 'package:smart_helmet/utils/constants.dart';

class AppProgressIndicator extends StatelessWidget{
  const AppProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: Stack(
          children: [
            const SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: kAccentColor,
                )),
            Align(
              alignment: FractionalOffset.center,
                child: Image.asset('assets/images/helmet.png', width: 35.0, height: 35.0,))
          ],
        ),
      ),
    );
  }
  
}