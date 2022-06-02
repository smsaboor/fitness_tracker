import 'package:fitness_tracker/presentation/widgets/calories/container_widget.dart';
import 'package:fitness_tracker/presentation/widgets/calories/text_widget.dart';
import 'package:flutter/material.dart';

class CaloriesItems extends StatelessWidget {
  CaloriesItems({
    required this.imagePath,
    required this.itemName,
    required this.itemConsume,
    required this.itemRequired,
  });

  final String imagePath;
  final String itemName;
  final String itemConsume;
  final String itemRequired;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomImageContainer(imagePath, Colors.amber),
        CustomTextWidget(itemName),
        CustomTextWidget(itemConsume),
        CustomTextWidget(itemRequired),
      ],
    );
  }
}
