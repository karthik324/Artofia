import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:artsophia/logic/cubit/nav_cubit.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  final ImageProvider imageProvider =
      const AssetImage('assets/images/signup_page_bg.jpg');
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavCubit(),
      child: BlocListener<NavCubit, NavState>(
        listener: (context, state) {
          if (state is NavToScreen && state.nav == Nav.userLogin) {
            Navigator.pushReplacement(
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
          }
        },
        child: _Scaffold(imageProvider: imageProvider),
      ),
    );
  }
}

class _Scaffold extends StatelessWidget with InputValidatorMixin {
  _Scaffold({
    Key? key,
    required this.imageProvider,
  }) : super(key: key);

  final ImageProvider<Object> imageProvider;
  final _globalKey = GlobalKey<FormState>();

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
              child: Form(
                key: _globalKey,
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
                      child: CustomTextField(
                        hintText: "Name",
                        iconData: Icons.person_outline_outlined,
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          return isNameValid(val);
                        },
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 300),
                      child: CustomTextField(
                        hintText: "Email Address",
                        iconData: Icons.alternate_email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          return isEmailValid(val);
                        },
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 400),
                      child: CustomTextField(
                        iconData: Icons.lock_outline,
                        hintText: "Password",
                        isPassword: true,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          return isPasswordValid(val);
                        },
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 500),
                      child: CustomTextField(
                        iconData: Icons.lock_reset_outlined,
                        hintText: "Confirm Password",
                        isPassword: true,
                        textInputAction: TextInputAction.done,
                        validator: (val) {
                          return isPasswordValid(val);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 83.h,
              left: 25.w,
              child: FadeInDown(
                delay: const Duration(milliseconds: 400),
                child: Button(
                  horizontalPadding: 9.h,
                  verticalPadding: 3.w,
                  title: 'Register',
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      print('jaichu');
                    }
                  },
                ),
              ),
            ),
            Positioned(
              top: 92.h,
              left: 15.w,
              child: Row(
                children: [
                  FadeIn(
                    duration: const Duration(milliseconds: 3000),
                    child: CustomTextSpan(
                      text: 'Already have an account? ',
                      spanText: 'Login',
                      onPress: TapGestureRecognizer()
                        ..onTap = () {
                          context.read<NavCubit>().navToUserLogin();
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
