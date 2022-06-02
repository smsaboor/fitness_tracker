import 'package:fitness_tracker/core/utils/assets.dart';
import 'package:fitness_tracker/data/models/model_activity_container.dart';
import 'package:fitness_tracker/data/models/model_user.dart';
import 'package:flutter/material.dart';

const String CALORIES_REQUIRES = "Today's required calories consumption";
const String HOME_TITLE = 'You can get a lot more out of it \nStart with our demo plan';
const String BUTTON_TEXT = "Take Demo";
const EMAIL_URL = 'mailto:mcs.saboor@gmail.com?subject=Flutter%20Job%20Query';
var CURRENT_DATE_TIME = DateTime.now();
const String CRASH_REPORT = 'https://a7c8bb966d2b4140b46a3ac3a127f07f@o1233405.ingest.sentry.io/6382570';

final USERDATA = User(
  imagePath: 'https://miro.medium.com/proxy/0*pAdZLfSqNrMZAAPA.jpg',
  name: 'S.M.Saboor',
  email: 'mca.saboor@gmail.com',
  about: "Hi, I am a Software Developer, worked on java and Flutter Apps. Flutter is a Googls's framework to build Multi-Platform Apps",
  isDarkMode: false,
);

final List<ModelActivityContainer> ACTIVITY_LIST = [
  ModelActivityContainer(
      'Water \nConsumed',
      '0.0 ltr of 4.0 ltr',
    StaticAssets.waterDop,
      Icons.add,
      true,
     ),
  ModelActivityContainer(
      'Calories \nBurned',
      '0.0 kcal',
    StaticAssets.flame,
      Icons.power_settings_new,
      false,
  )
];
const _keyUser = 'user';

const List MONTHS = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];



const Color kLightPrimary = Color(0xFF5AD383);
const Color kLightAccent = Color(0xFF48AB8C);
const Color kLightTextColor = Colors.black;
const Color kLightPlaceholder = Color(0xFFE8EAF0);
const Color kLightPlaceholderText = Color(0xFFC6CAD3);
const Color kLightBg = Color(0xFFFFFFFF);
const Color kLightError = Color(0xFFFF7971);

const Color kDarkPrimary = Color(0xFF4CC49B);
const Color kDarkAccent = Color(0xFF4CC49B);
const Color kDarkTextColor = Colors.white;
const Color kDarkPlaceholder = Color(0xFF2D3655);
const Color kDarkPlaceholderText = Color(0xFF525C7C);
const Color kDarkBg = Color(0xFF2D3251);
const Color kDarkError = Color(0xFFD0524A);

const Duration kAnimationDuration = Duration(milliseconds: 300);
const Curve kAnimationCurve = Curves.easeInOut;

