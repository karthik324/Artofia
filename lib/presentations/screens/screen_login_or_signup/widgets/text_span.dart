import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextSpan extends StatelessWidget {
  final String text;
  final String spanText;
  final GestureRecognizer? onPress;
  CustomTextSpan({
    Key? key,
    required this.text,
    required this.spanText,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 3.w),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text,
                  style: kHeadStyle.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                TextSpan(
                  text: spanText,
                  style: kPrimaryColoredText.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w100,
                  ),
                  recognizer: onPress,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
