import 'package:fitness_tracker/bloc/cubit/profile_cubit.dart';
import 'package:fitness_tracker/bloc/cubit/calories_burned_cubit.dart';
import 'package:fitness_tracker/bloc/cubit/theme_cubit.dart';
import 'package:fitness_tracker/bloc/cubit/water_consume_cubit.dart';
import 'package:fitness_tracker/core/utils/constants.dart';
import 'package:fitness_tracker/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'bloc/cubit/bottom_nav_cubit.dart';
import 'package:flutter/services.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SentryFlutter.init(
        (options) {
      options.dsn = CRASH_REPORT;
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavCubit>(
          create: (BuildContext context) => BottomNavCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
        BlocProvider<WaterConsumeCubit>(
          create: (BuildContext context) => WaterConsumeCubit(),
        ),
        BlocProvider<CaloriesBurnedCubit>(
          create: (BuildContext context) => CaloriesBurnedCubit(),
        ),
        BlocProvider<ProfileCubit>(
          create: (BuildContext context) => ProfileCubit(),
        ),
      ],
      child:  BlocBuilder<ThemeCubit, ThemeState>(
                    builder: (context, state) {
                      return MaterialApp(
                        title: 'Fitness Tracker',
                        debugShowCheckedModeBanner: false,
                        color: Colors.white,
                        theme: state.currentTheme,
                        initialRoute: RouteGenerator.splashScreen,
                        onGenerateRoute: RouteGenerator.generateRoute,
                      );
                    },
                  ),
    );
  }
}
