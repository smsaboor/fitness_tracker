import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
    );
  }
}
