import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginOrSignupScreen extends StatelessWidget {
  final ImageProvider imageProvider =
      const AssetImage('assets/images/landing_bg.jpg');
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGroundImage1(
            image: imageProvider,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 100),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Center(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            'Artofia.',
                            speed: const Duration(milliseconds: 280),
                            textStyle: kBigHeadStyle.copyWith(
                              fontFamily: GoogleFonts.pacifico().fontFamily,
                              fontSize: 30.sp,
                            ),
                            curve: Curves.bounceInOut,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 200),
                  child: Button(
                    horizontalPadding: 10.h,
                    verticalPadding: 3.w,
                    bottomMargin: 1.h,
                    title: 'Login',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const LoginScreen();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Button(
                    horizontalPadding: 9.h,
                    verticalPadding: 3.w,
                    title: 'SignUp',
                    onPressed:() {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const SignUpScreen();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                FadeIn(
                  duration: const Duration(milliseconds: 1500),
                  child: CustomTextSpan(
                    text: 'Login as ',
                    spanText: 'Admin?',
                    onPress: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const AdminLoginScreen();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
