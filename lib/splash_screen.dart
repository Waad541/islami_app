import 'dart:async';

import 'package:flutter/material.dart';

import 'Home/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName='splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children :[
        Image.asset('assets/images/splash_bg.png'),
        Padding(
          padding:EdgeInsets.only(top:300,left:70),
          child:Image.asset('assets/images/logo_splash.png'),
        ),
      ]
    );
  }
}
