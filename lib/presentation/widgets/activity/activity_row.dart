import 'package:fitness_tracker/core/utils/constants.dart';
import 'package:fitness_tracker/presentation/widgets/activity/activity_card.dart';
import 'package:flutter/material.dart';

class ActivityRow extends StatelessWidget {
  const ActivityRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActivityCard(ACTIVITY_LIST[0], true),
        Spacer(),
        ActivityCard(ACTIVITY_LIST[1], false)
      ],
    );
  }
}
