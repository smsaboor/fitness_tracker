import 'package:flutter/material.dart';


class CustomTitle extends StatelessWidget {
  final String? title;

  const CustomTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
        title ?? '',
    );
  }
}
