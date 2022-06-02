import 'package:fitness_tracker/presentation/animation/custom_Liquid_progressive_indicator.dart';
import 'package:fitness_tracker/presentation/animation/custom_pointer_gauge.dart';
import 'package:fitness_tracker/data/models/model_activity_container.dart';
import 'package:fitness_tracker/presentation/widgets/activity/activity_bottom.dart';
import 'package:fitness_tracker/presentation/widgets/activity/activity_header.dart';

import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard(this.item, this.isWaterConsumer);

  final bool isWaterConsumer;
  final ModelActivityContainer item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .32,
      width: MediaQuery.of(context).size.width * .43,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          ActivityHeader(item,isWaterConsumer),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          isWaterConsumer
              ? CustomLiquidProgressIndicator()
              : CustomPointerGuage(),
          Spacer(),
          ActivityBottom(item)
        ],
      ),
    );
  }
}
