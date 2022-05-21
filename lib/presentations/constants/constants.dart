import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const kBackGroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kWidth = SizedBox(
  width: 10,
);
const kHeight = SizedBox(
  height: 10,
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

  String isEmailValid(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return "Email can't be empty";
    }
    if (!regExp.hasMatch(value)) {
      return "Please enter a valid email";
    } else {
      return '';
    }
  }

  String isPasswordValid(String? value) {
    if (value!.length < 8) {
      return "Password must contain 8 characters";
    } else {
      return '';
    }
  }
}
