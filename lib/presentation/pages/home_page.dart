import 'package:fitness_tracker/presentation/widgets/activity/activity_row.dart';
import 'package:fitness_tracker/presentation/widgets/calories/calories_card.dart';
import 'package:fitness_tracker/presentation/widgets/home_page/home_header.dart';
import 'package:fitness_tracker/presentation/widgets/home_page/time_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HomeHeader(),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          TimeRow(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ActivityRow(),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                CaloriesCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
