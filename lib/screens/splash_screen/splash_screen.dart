import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stylish/screens/intro_screen/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // this is the named navigator that will go to the intro screen:-
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // this the splash screen logo
        child: SizedBox(child: Image.asset('assets/images/stylishlogo.png')),
      ),
    );
  }
}
