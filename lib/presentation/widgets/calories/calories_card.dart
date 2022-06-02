import 'package:fitness_tracker/core/utils/assets.dart';
import 'package:fitness_tracker/core/utils/constants.dart';
import 'package:fitness_tracker/presentation/widgets/calories/calories_items.dart';
import 'package:flutter/material.dart';

class CaloriesCard extends StatelessWidget {
  const CaloriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .30,
        width: MediaQuery.of(context).size.width * .9,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Text(CALORIES_REQUIRES,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
            Text('2596 kcal'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CaloriesItems(
                    imagePath: StaticAssets.gramConsume,
                    itemName: 'Carbs',
                    itemConsume: '259g',
                    itemRequired: '1038 kcal'),
                CaloriesItems(
                    imagePath: StaticAssets.proteinConsume,
                    itemName: 'Protein',
                    itemConsume: '259g',
                    itemRequired: '1038 kcal'),
                CaloriesItems(
                    imagePath: StaticAssets.fatConsume,
                    itemName: 'Fat',
                    itemConsume: '57g',
                    itemRequired: '519 kcal')
              ],
            )
          ],
        ));
  }
}
