import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 8.w,
            right: 8.w,
          ),
          child: Row(
            children: [
              Text(
                '1K Followers',
                style: kHeadStyle,
              ),
              const Spacer(),
              Text(
                '4 Posts',
                style: kHeadStyle,
              )
            ],
          ),
        ),
        Text(
          '@Felix Angelov',
          style: kHeadStyle.copyWith(fontSize: 25.sp),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                constraints: const BoxConstraints(maxWidth: 200),
                child: Text(
                  'Hey there, I\'m Felix... :)',
                  style: kHeadStyle.copyWith(height: 1),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            pushNewScreen(context, screen: EditProfileScreen());
          },
          child: Text(
            'Edit Profile',
            style: kHeadStyle,
          ),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            pushNewScreen(context, screen: ReqToBeArtistScreen());
          },
          child: Text(
            'Request to become an artist',
            style: kHeadStyle,
          ),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
          ),
        )
      ],
    );
  }
}
