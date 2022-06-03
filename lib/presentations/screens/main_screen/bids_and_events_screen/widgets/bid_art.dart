import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BidArtCard extends StatelessWidget {
  const BidArtCard({
    Key? key,
    required this.art,
    required this.amount,
  }) : super(key: key);

  final String art;
  final String amount;

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
                  image: NetworkImage(art),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 29.h,
          right: 6.w,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Pay ₹$amount',
              style: kHeadStyle,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                kBackGroundColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
