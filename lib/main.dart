import 'package:flutter/material.dart';

import 'screen/splash_screen.dart';
void main() {
  runApp(const LionFlowersApp());
}

class LionFlowersApp extends StatelessWidget {
  const LionFlowersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lion Flowers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE75480),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF9FA),
        fontFamily: 'Arial',
      ),
      home: const SplashScreen(),
    );
  }
}