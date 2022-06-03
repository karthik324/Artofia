import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:artsophia/logic/cubit/nav_cubit.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginOrSignupScreen extends StatelessWidget {
  final ImageProvider imageProvider =
      const AssetImage('assets/images/landing_bg.jpg');
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavCubit(),
      child: BlocListener<NavCubit, NavState>(
        listener: (context, state) {
          if (state is NavToScreen) {
            if (state.nav == Nav.userLogin) {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
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
            } else if (state.nav == Nav.admin) {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
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
            } else if (state.nav == Nav.signUp) {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
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
            }
          }
        },
        child: _Scaffold(imageProvider: imageProvider),
      ),
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    Key? key,
    required this.imageProvider,
  }) : super(key: key);

  final ImageProvider<Object> imageProvider;

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
                      context.read<NavCubit>().navToUserLogin();
                    },
                  ),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Button(
                    horizontalPadding: 9.h,
                    verticalPadding: 3.w,
                    title: 'SignUp',
                    onPressed: () {
                      context.read<NavCubit>().navToSignUp();
                    },
                  ),
                ),
                FadeIn(
                  duration: const Duration(milliseconds: 1500),
                  child: CustomTextSpan(
                    text: 'Login as ',
                    spanText: 'Admin?',
                    onPress: TapGestureRecognizer()
                      ..onTap = () {
                        context.read<NavCubit>().navToAdmin();
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
