import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/Screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/Moviflix.jpg',
        ),
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: HomeScreen(),
        backgroundColor: Color(0xFF121212),
      ),
    );
  }
}
