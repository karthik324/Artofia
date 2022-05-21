import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AdminLoginScreen extends StatelessWidget {
  final ImageProvider imageProvider =
      const AssetImage('assets/images/admin_login_bg.jpg');
  const AdminLoginScreen({Key? key}) : super(key: key);

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
                    child: const CustomTextField(
                      hintText: "Email Address",
                      iconData: Icons.alternate_email,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 300),
                    child: const CustomTextField(
                      iconData: Icons.lock_outline,
                      hintText: "Password",
                      isPassword: true,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 68.h,
              left: 25.w,
              child: FadeInDown(
                delay: const Duration(milliseconds: 400),
                child: Button(
                  horizontalPadding: 9.h,
                  verticalPadding: 3.w,
                  title: 'Login',
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
