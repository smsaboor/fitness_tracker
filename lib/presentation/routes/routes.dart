import 'package:fitness_tracker/core/errors/exceptions.dart';
import 'package:fitness_tracker/presentation/pages/bottom_nav_page.dart';
import 'package:fitness_tracker/presentation/pages/home_page.dart';
import 'package:fitness_tracker/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String tabScreen = '/tab';
  static const String homeScreen = '/home';
  static const String thankyou = '/thank_you';
  static const String error = '/error';
  static const String locationPermission = '/location_permission';
  static const String notificationPermission = '/notification_permission';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case tabScreen:
        return MaterialPageRoute(builder: (_) => TabScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        throw RouteException('Route not found');
    }
  }
}
