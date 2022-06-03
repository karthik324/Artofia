import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const kBackGroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
final kWidth = SizedBox(
  width: 2.w,
);
final kBigWidth = SizedBox(
  width: 7.w,
);
final kHeight = SizedBox(
  height: 10.h,
);
final kSmallHeight = SizedBox(
  height: 4.h,
);
final kBigHeadStyle = TextStyle(
  fontSize: 40.sp,
  fontWeight: FontWeight.w500,
  color: kWhiteColor,
  fontFamily: GoogleFonts.dongle().fontFamily,
);
final kHeadStyle = TextStyle(
  fontSize: 20.sp,
  color: kWhiteColor,
  fontFamily: GoogleFonts.dongle().fontFamily,
);
final kPrimaryColoredText = TextStyle(
  fontSize: 20.sp,
  fontWeight: FontWeight.normal,
  color: kPrimaryColor,
  fontFamily: GoogleFonts.dongle().fontFamily,
);

mixin InputValidatorMixin {
  String? isNameValid(String? value) {
    if (value!.isEmpty) {
      return "Name can't be empty";
    }
    if (value.isNotEmpty && value.length < 3) {
      return "Please enter a valid name";
    } else {
      return null;
    }
  }

  String? isEmailValid(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return "Email can't be empty";
    }
    if (!regExp.hasMatch(value)) {
      return "Please enter a valid email";
    } else {
      return null;
    }
  }

  String? isPasswordValid(String? value) {
    if (value!.length < 8) {
      return "Password must contain 8 characters";
    } else {
      return null;
    }
  }
}

Map<int, Color> color = {
  50: const Color.fromRGBO(255, 189, 115, .1),
  100: const Color.fromRGBO(255, 189, 115, .2),
  200: const Color.fromRGBO(255, 189, 115, .3),
  300: const Color.fromRGBO(255, 189, 115, .4),
  400: const Color.fromRGBO(255, 189, 115, .5),
  500: const Color.fromRGBO(255, 189, 115, .6),
  600: const Color.fromRGBO(255, 189, 115, .7),
  700: const Color.fromRGBO(255, 189, 115, .8),
  800: const Color.fromRGBO(255, 189, 115, .9),
  900: const Color.fromRGBO(255, 189, 115, 1),
};

MaterialColor colorCustom = MaterialColor(0xFFFFBD73, color);

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
