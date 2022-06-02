import 'package:fitness_tracker/bloc/cubit/calories_burned_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CustomPointerGuage extends StatelessWidget {
  const CustomPointerGuage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaloriesBurnedCubit, CaloriesBurnedState>(
        builder: (_, state) {
      return SizedBox(
          height: 120,
          width: 120,
          child: SfRadialGauge(axes: <RadialAxis>[
// https://help.syncfusion.com/flutter/radial-gauge/pointers
            RadialAxis(
                axisLineStyle: AxisLineStyle(thickness: 5, color: Colors.white),
                useRangeColorForAxis: true,
                canScaleToFit: true,
                startAngle: 180,
                endAngle: 00,
                isInversed: false,
                showTicks: true,
                pointers: <GaugePointer>[
// RangePointer(value: 30, ),
// MarkerPointer(value: 70),
// NeedlePointer(value: 60),
                  NeedlePointer(
                    value: state.caloriesIndicatorValue.toDouble(),
                    knobStyle: KnobStyle(knobRadius: .06, color: Colors.white),
                    enableAnimation: true,
                    needleColor: Colors.white,
                    needleLength: .8,
                    needleStartWidth: .1,
                    needleEndWidth: 4,
// tailStyle: TailStyle(width: 0),
                  )
                ])
          ]));
    });
  }
}
