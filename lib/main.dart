import 'package:flutter/material.dart';
import 'package:movie/screens/forgot_password_screen.dart';
import 'package:movie/screens/login_screnn.dart';
import 'package:movie/screens/movie.dart';
import 'package:movie/screens/profile_edit_screen.dart';
import 'package:movie/screens/profile_screen.dart';
import 'package:movie/screens/splash_screen.dart';
import 'package:movie/screens/verify_code_screen.dart';
import 'package:movie/screens/vpn_location_screen.dart';
import 'package:movie/screens/vpn_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.redAccent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/edit_profile': (context) => const ProfileEditScreen(),
        '/vpn_main_screen': (context) => const VPNMainScreen(),
        '/vpn_location_screen': (context) => VPNLocationScreen(),
        '/verify_code_screen': (context) => const VerifyCodeScreen(),
        '/movie': (context) => const Movie(),
        '/login': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
      },
    );
  }

}
