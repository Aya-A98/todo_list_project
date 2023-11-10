import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dolist/viewmodel/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'loginpage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => viewmodel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Colors.deepPurple,
          splashIconSize: 300,
          pageTransitionType: PageTransitionType.leftToRight,
          //splashTransition: SplashTransition.decoratedBoxTransition,
          splash: Column(
            children: [
              Image.asset(
                "images/work.jpg",
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                "Make Your List ",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          nextScreen: login(),
        ));
  }
}
