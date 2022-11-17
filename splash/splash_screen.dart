import 'dart:async';
import 'dart:html';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cricketers/create_cricketer.dart';
import 'package:flutter_application_1/splash/home_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (() {
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>CreateCricketer() ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        
        child: AnimatedSplashScreen(
          splash: Image.asset("assets/cricket_splash.jpg"),
          nextScreen: CreateCricketer(),
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.amber,
          duration: 5,),
          )
        
        // AnimatedSplashScreen(splash:Image.asset("assets/cricket_splash.jpg"), nextScreen: CreateCricketer())
      
      
      /* Center(
        child: Container(
          
          child: Lottie.asset("assets/cricket_animation_lottie.json"),
          //child: Image.asset("assets/cricket_splash.jpg"),
         
        
          color: Colors.blue,
        ),
      ), */
    );
  }
}
