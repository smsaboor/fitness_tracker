import 'dart:async';
import 'package:fitness_tracker/core/utils/assets.dart';
import 'package:fitness_tracker/presentation/pages/bottom_nav_page.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => TabScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(StaticAssets.background), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * .68),
            SleekCircularSlider(
              min: 0,
              max: 100,
              initialValue: 100,
              appearance: CircularSliderAppearance(
                infoProperties: InfoProperties(
                    mainLabelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                    )
                ),
                customColors: CustomSliderColors(
                    dotColor: Colors.white,
                    progressBarColor: Colors.black,
                    shadowColor: Colors.white,
                    trackColor: Colors.white),
                spinnerDuration: 5,
                animDurationMultiplier: 2,
                animationEnabled: true,
                startAngle: 0.0,
                angleRange: 360,
              ),
            ),
            Text(
              'Your Fitness Tracker',
              style: TextStyle(fontSize: 24.0, color: Colors.red),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Initializing app...',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}