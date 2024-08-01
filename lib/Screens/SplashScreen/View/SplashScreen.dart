import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Screens/Home/View/Home_Page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home(),));
    },);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Lottie.network(height: 200,
                'https://lottie.host/aca5e181-bddd-4dda-a6c8-0c9dd4460712/dpKJQTORwF.json')
        ),
    );
  }
}
