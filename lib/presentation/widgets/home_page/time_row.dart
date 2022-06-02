import 'package:fitness_tracker/core/utils/constants.dart';
import 'package:fitness_tracker/presentation/widgets/home_page/custom_title.dart';
import 'package:flutter/material.dart';

class TimeRow extends StatelessWidget {
  const TimeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            'Today',
          ),
          Spacer(),
          Text(
            '${MONTHS[CURRENT_DATE_TIME.month - 1]} ${CURRENT_DATE_TIME.day}',
          )
        ],
      ),
    );
  }
}
