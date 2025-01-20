import 'dart:async';

import 'package:currency_converter/animation/dashboardscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(
          context,
        MaterialPageRoute(
            builder: (context){
              return  DashBoardScreen();
        }
        )
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            "HotStar",
            style: TextStyle(
              fontSize: 34,
              fontFamily: "FontMain",
            ),
          ),
        ),
      ),
    );
  }
}
