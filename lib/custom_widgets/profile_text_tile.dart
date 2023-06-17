import 'package:flutter/material.dart';
import 'package:smart_helmet/utils/constants.dart';

class ProfileTextTile extends StatelessWidget{

  final String label;
  final String data;
  final Function onTap;

  const ProfileTextTile({super.key, required this.label, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data),
      subtitle: Text(label),
      trailing: InkWell(
        onTap: onTap(),
        child: const Icon(Icons.edit, color: kPrimarySwatch,),
      ),
    );
  }

}