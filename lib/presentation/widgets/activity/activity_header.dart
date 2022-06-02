import 'package:fitness_tracker/data/models/model_activity_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
class ActivityHeader extends StatelessWidget {
  const ActivityHeader(this.item,this.isWaterConsumer);
  final ModelActivityContainer item;
  final isWaterConsumer;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Text(item.title1),
        Spacer(),
        Expanded(child: SvgPicture.asset(
          item.svgIcon,
          height: 30.0,
          width: 20.0,
          color: isWaterConsumer ? null: null,
        ),)
      ],
    );
  }
}
