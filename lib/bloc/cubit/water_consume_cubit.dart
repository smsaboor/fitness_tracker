import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
part '../state/water_consume_state.dart';


class WaterConsumeCubit extends Cubit<WaterConsumeState> {
  //https://medium.com/vijay-r/flutter-bloc-pattern-simple-cubits-a860549738eb
  WaterConsumeCubit() : super(WaterConsumeState(waterConsumeValue: 0.0,waterIndicatorValue: 0.0));
  void increment(){
    if(state.waterConsumeValue<4.0){
      emit(WaterConsumeState(waterConsumeValue: state.waterConsumeValue + 0.1,waterIndicatorValue: state.waterIndicatorValue + 0.025));
    }
    print(state.waterConsumeValue);
    print(state.waterIndicatorValue);
  }
  void decrement() => emit(WaterConsumeState(waterConsumeValue: state.waterConsumeValue - 0.1,waterIndicatorValue: state.waterIndicatorValue-0.25));
  /// update index function to update the index onTa p in BottomNavigationBar

}
