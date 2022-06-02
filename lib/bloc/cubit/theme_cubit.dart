import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../../presentation/theme/theme_data.dart';
part '../state/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(isDarkThemeOn: false));
  void toggleSwitch(bool value) => emit(state.copyWith(changeState: value));
}