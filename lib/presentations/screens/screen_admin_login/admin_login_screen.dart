import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:artsophia/logic/cubit/nav_cubit.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class AdminLoginScreen extends StatelessWidget {
  final ImageProvider imageProvider =
      const AssetImage('assets/images/admin_login_bg.jpg');
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavCubit(),
      child: _Scaffold(imageProvider: imageProvider),
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
                              'LOGIN',
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
                      delay: const Duration(milliseconds: 300),
                      child: CustomTextField(
                        iconData: Icons.lock_outline,
                        hintText: "Password",
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
              top: 71.h,
              left: 25.w,
              child: FadeInDown(
                delay: const Duration(milliseconds: 400),
                child: Button(
                  horizontalPadding: 9.h,
                  verticalPadding: 3.w,
                  title: 'Login',
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      print('hehe jaichu');
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
