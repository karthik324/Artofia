import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentations/screens/screens_and_widgets.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

final List<String> images = [
  'assets/images/landing_bg.jpg',
  'assets/images/login_page_bg.jpg',
  'assets/images/logo.jpg',
  'assets/images/signup_page_bg.jpg',
  'assets/images/admin_login_bg.jpg',
];

void cacheImage(BuildContext context, List<String> imageList) {
  int i = 0;
  while (i < imageList.length) {
    precacheImage(AssetImage(imageList[i]), context);
    i++;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        cacheImage(context, images);
        return MaterialApp(
          title: 'Artsophia',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.dongle().fontFamily,
            primaryColor: kPrimaryColor,
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kWhiteColor.withOpacity(
                    0.5,
                  ),
                ),
              ),
            ),
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
