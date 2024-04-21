// import 'dart:ui';
import 'package:batch_32b/screen/area_of_circle_screen.dart';
import 'package:batch_32b/screen/arithmetic_screen.dart';
import 'package:batch_32b/screen/dashboard_screen.dart';
import 'package:batch_32b/screen/simple_interest.dart';
// import 'package:batch_32b/screen/hello_world_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CircleScreen(),
    );
  }
}
