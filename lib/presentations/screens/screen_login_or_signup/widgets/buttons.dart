import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double bottomMargin;
  final double topMargin;
  final double leftMargin;
  final double rightMargin;
  final double verticalPadding;
  final double horizontalPadding;
  Button({
    Key? key,
    required this.title,
    required this.onPressed,
    this.bottomMargin = 2,
    this.leftMargin = 2,
    this.rightMargin = 2,
    this.topMargin = 2,
    this.horizontalPadding = 12,
    this.verticalPadding = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Container(
          margin: EdgeInsets.only(
              bottom: bottomMargin,
              top: topMargin,
              left: leftMargin,
              right: rightMargin),
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.h),
            color: kPrimaryColor,
          ),
          child: Row(
            children: [
              Text(
                title,
                style: kHeadStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
