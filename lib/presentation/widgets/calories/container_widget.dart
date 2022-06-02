import 'package:fitness_tracker/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer(this.icon, this.color);

  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black54,
      ),
      child: SvgPicture.asset(
        icon,
        color: (StaticAssets.gramConsume==icon) ? color : null,
        height: MediaQuery.of(context).size.height * .01,
        width: MediaQuery.of(context).size.width * .01,
      ),
    );
  }
}
