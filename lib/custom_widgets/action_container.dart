import 'package:flutter/cupertino.dart';

import '../utils/constants.dart';

class ActionContainer extends StatelessWidget{
  final double height;
  final double width;
  final Widget child;
  const ActionContainer({super.key, required this.height, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kGreyOutline,
          borderRadius: BorderRadius.circular(20.0)
      ),
      width: width,
      height: height,
      child: child,
    );
  }
}