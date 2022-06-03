import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class LikeCmntBidRow extends StatelessWidget {
  const LikeCmntBidRow({
    Key? key,
    required this.noOfLikes,
    required this.noOfCmnts,
    required this.bidAmount,
  }) : super(key: key);

  final String noOfLikes;
  final String noOfCmnts;
  final String bidAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 38.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w, bottom: 1.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomHeartIcon(),
                kWidth,
                Text(
                  noOfLikes,
                  style: kHeadStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  splashRadius: 1,
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.comment,
                    color: kWhiteColor,
                    size: 2.5.h,
                  ),
                  padding: EdgeInsets.only(left: 3.w),
                ),
                Text(
                  noOfCmnts,
                  style: kHeadStyle,
                )
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 2.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    bidAmount,
                    style: kHeadStyle.copyWith(fontSize: 22.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.h),
                    child: IconButton(
                      onPressed: () {},
                      splashRadius: 2.w,
                      icon: Icon(
                        Icons.add_circle,
                        color: kWhiteColor,
                        size: 3.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
