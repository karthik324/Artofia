import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UserNameAndPfp extends StatelessWidget {
  const UserNameAndPfp({
    Key? key,
    required this.artistPfp,
    required this.artist,
  }) : super(key: key);
  final String artistPfp;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 6.w,
              backgroundImage: NetworkImage(
                artistPfp,
              ),
            ),
            kWidth,
            Text(
              artist,
              style: kHeadStyle,
            ),
          ],
        )
      ],
    );
  }
}
