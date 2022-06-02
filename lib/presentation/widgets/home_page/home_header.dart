import 'package:fitness_tracker/core/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(HOME_TITLE),
          Spacer(),
          ElevatedButton(onPressed: () {}, child: Text(BUTTON_TEXT,style: TextStyle(fontSize: 16),))
        ],
      ),
    );
  }
}
