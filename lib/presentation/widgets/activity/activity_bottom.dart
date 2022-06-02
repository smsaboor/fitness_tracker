import 'package:fitness_tracker/bloc/cubit/calories_burned_cubit.dart';
import 'package:fitness_tracker/bloc/cubit/water_consume_cubit.dart';
import 'package:fitness_tracker/data/models/model_activity_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ActivityBottom extends StatelessWidget {
  const ActivityBottom(this.item);

  final ModelActivityContainer item;

  @override
  Widget build(BuildContext context) {
    return item.isWaterWidget
        ? BlocBuilder<WaterConsumeCubit, WaterConsumeState>(
            builder: (_, waterState) {
            return Row(
              children: [
                Text(
                    '${num.parse(waterState.waterConsumeValue.toStringAsFixed(1))} ltr of 4.0 ltr'),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      // context.read<BottomNavCubit>().updateIndex(index);
                      // context.read()<WaterConsumeCubit>().
                      BlocProvider.of<WaterConsumeCubit>(context).increment();
                    },
                    child: Icon(item.icon))
              ],
            );
          })
        : BlocBuilder<CaloriesBurnedCubit, CaloriesBurnedState>(
            builder: (_, caloryState) {
            return Row(
              children: [
                Text(
                    '${caloryState.caloriesBurnedValue} kcal'),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      // context.read<BottomNavCubit>().updateIndex(index);
                      // context.read()<WaterConsumeCubit>().
                      BlocProvider.of<CaloriesBurnedCubit>(context).increment();
                    },
                    child: Icon(item.icon))
              ],
            );
          });
  }
}
