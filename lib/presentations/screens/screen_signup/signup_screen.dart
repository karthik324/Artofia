import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  final ImageProvider imageProvider =
      const AssetImage('assets/images/signup_page_bg.jpg');
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInDown(
                    delay: const Duration(milliseconds: 100),
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.5.w),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            'SIGNUP',
                            speed: const Duration(milliseconds: 280),
                            textStyle: kBigHeadStyle,
                            curve: Curves.bounceInOut,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 200),
                    child: const CustomTextField(
                      hintText: "Name",
                      iconData: Icons.person_outline_outlined,
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 300),
                    child: const CustomTextField(
                      hintText: "Email Address",
                      iconData: Icons.alternate_email,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 400),
                    child: const CustomTextField(
                      iconData: Icons.lock_outline,
                      hintText: "Password",
                      isPassword: true,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    child: const CustomTextField(
                      iconData: Icons.lock_reset_outlined,
                      hintText: "Confirm Password",
                      isPassword: true,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 76.h,
              left: 25.w,
              child: FadeInDown(
                delay: const Duration(milliseconds: 400),
                child: Button(
                  horizontalPadding: 9.h,
                  verticalPadding: 3.w,
                  title: 'Register',
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              top: 85.h,
              right: 0.w,
              child: Row(
                children: [
                  FadeIn(
                    duration: const Duration(milliseconds: 3000),
                    child: CustomTextSpan(
                      text: 'Already have an account? ',
                      spanText: 'Login',
                      onPress: TapGestureRecognizer()..onTap = () {
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
