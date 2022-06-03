import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyBidArt extends StatelessWidget {
  const MyBidArt({
    Key? key,
    required this.art,
  }) : super(key: key);

  final String art;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 36.5.h,
          width: double.maxFinite,
          child: Card(
            color: kPrimaryColor,
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.4.w),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
          width: 100.w,
          child: Card(
            elevation: 1.h,
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.4.w),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.4.w),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    art,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 29.h,
          right: 6.w,
          child: Container(
            height: 4.5.h,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(3.w),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0.4.h),
                  child: Text(
                    'Paid',
                    style: kHeadStyle,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Icon(
                  Icons.done,
                  color: kWhiteColor,
                  size: 5.w,
                ),
              ],
            ),
            padding: EdgeInsets.only(
              right: 3.5.w,
              left: 4.5.w,
            ),
            margin: EdgeInsets.only(top: 1.h),
          ),
        ),
      ],
    );
  }
}