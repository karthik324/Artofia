import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 30.h,
          width: double.maxFinite,
          child: Image.network(
            'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Expeditions_Header_Artwork_Card_Size_1.max-1000x1000.jpg',
          ),
        ),
        Positioned(
          top: 21.h,
          left: 40.w,
          child: CircleAvatar(
            radius: 12.w,
            backgroundColor: kWhiteColor,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://miro.medium.com/max/3150/1*lcR8NNnnKzOS6Ma-VJJTCQ.jpeg',
              ),
              radius: 11.w,
            ),
          ),
        ),
      ],
    );
  }
}
