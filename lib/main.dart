import 'package:flutter/material.dart';
import 'package:newsapp/views/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:AnimatedSplashScreen(
        backgroundColor: Colors.blue,
        splash: Image.asset('assets/NEWS INDIA.png',
        width: 160,),
        nextScreen: Home(),
      )
    );
  }
}
