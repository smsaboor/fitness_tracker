import 'package:fitness_tracker/bloc/cubit/water_consume_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter/material.dart';

class CustomLiquidProgressIndicator extends StatelessWidget {
  const CustomLiquidProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterConsumeCubit, WaterConsumeState>(
        builder: (_, state) {
      return SizedBox(
          height: 100,
          width: 30,
          child: LiquidLinearProgressIndicator(
            value: double.parse(state.waterIndicatorValue.toStringAsFixed(1)),
            // Defaults to 0.5.
            valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
            // Defaults to the current Theme's accentColor.
            backgroundColor: Colors.white,
            // Defaults to the current Theme's backgroundColor.
            borderColor: Colors.black54,
            //border color of the bar
            borderWidth: 2.0,
            //border width of the bar
            borderRadius: 16.0,
            //border radius
            direction: Axis.vertical,
            // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
            center: Text("%"), //text inside bar
          ));
    });
  }
}
