import 'package:flutter/material.dart';
import 'package:flutter_kekidungan_02_ui/constants.dart';
import 'package:flutter_kekidungan_02_ui/screens/song_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'models/song.dart';
import 'screens/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kekidungan Ui Flutter',
      home: HomeScreen(),
    );
  }
}


