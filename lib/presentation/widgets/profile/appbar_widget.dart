
import 'package:fitness_tracker/bloc/cubit/theme_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker/presentation/theme/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppBar buildAppBar(BuildContext context) {
  bool isDarkMode=true;
  final icon = isDarkMode ? CupertinoIcons.sun_max : CupertinoIcons.moon_stars;

  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Switch(
            value: state.isDarkThemeOn!,
            onChanged: (newValue) {
              context.read<ThemeCubit>().toggleSwitch(newValue);
            },
          );
        },
      ),
    ],
  );
}
