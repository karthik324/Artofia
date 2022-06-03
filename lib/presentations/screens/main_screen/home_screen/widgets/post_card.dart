import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.art,
    required this.artistPfp,
    required this.artistName,
    required this.bidAmount,
    required this.noOfCmnts,
    required this.noOfLikes,
  }) : super(key: key);

  final String art;
  final String artistPfp;
  final String artistName;
  final String noOfLikes;
  final String noOfCmnts;
  final String bidAmount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 45.h,
          width: double.maxFinite,
          child: Card(
            margin: EdgeInsets.all(
              2.h,
            ),
            color: kPrimaryColor,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.h),
              ),
              elevation: 1.h,
              margin: EdgeInsets.only(
                top: 6.5.h,
                bottom: 5.h,
                left: 3.w,
                right: 3.w,
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
        ),
        Positioned(
          left: 3.3.h,
          top: 2.3.h,
          child: UserNameAndPfp(
            artistPfp: artistPfp,
            artist: artistName,
          ),
        ),
        LikeCmntBidRow(
          noOfLikes: noOfLikes,
          noOfCmnts: noOfCmnts,
          bidAmount: bidAmount,
        ),
      ],
    );
  }
}
