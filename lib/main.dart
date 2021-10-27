import 'package:flutter/material.dart';

import 'homeplay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2CC9DD),
        sliderTheme: SliderThemeData(
          trackHeight: 1.0,
          thumbColor: Colors.white,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF5F5F5F),
        ),
      ),
      home: HomePlay(),
    );
  }
}
