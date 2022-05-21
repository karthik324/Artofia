import 'package:animate_do/animate_do.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/logo.jpg'),
      nextScreen: const LoginOrSignupScreen(),
      splashTransition: SplashTransition.fadeTransition,
      centered: true,
      backgroundColor: kBackGroundColor,
      duration: 1500,
    );
  }
}
