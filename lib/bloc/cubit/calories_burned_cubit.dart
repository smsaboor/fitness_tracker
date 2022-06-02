import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
part '../state/calories_burned_state.dart';


class CaloriesBurnedCubit extends Cubit<CaloriesBurnedState> {
  //https://medium.com/vijay-r/flutter-bloc-pattern-simple-cubits-a860549738eb
  CaloriesBurnedCubit() : super(CaloriesBurnedState(caloriesBurnedValue: 0,caloriesIndicatorValue: 0));
  void increment(){
    if(state.caloriesBurnedValue<1000){
      emit(CaloriesBurnedState(caloriesBurnedValue: state.caloriesBurnedValue + 10,caloriesIndicatorValue: state.caloriesIndicatorValue + 1));
    }
    print(state.caloriesBurnedValue);
    print(state.caloriesIndicatorValue);
  }
  void decrement() => emit(CaloriesBurnedState(caloriesBurnedValue: state.caloriesBurnedValue - 10,caloriesIndicatorValue: state.caloriesIndicatorValue-1));
/// update index function to update the index onTa p in BottomNavigationBar

}
