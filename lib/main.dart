import 'package:flutter/material.dart';
import 'package:movie/screens.dart/movie.dart';
import 'package:movie/screens.dart/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: SplashScreen(),
    );
  }
}
