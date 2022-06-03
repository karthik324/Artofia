import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Artofia',
          style: kHeadStyle.copyWith(
            fontSize: 30.sp,
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const PostCard(
            art:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJRCE_bek9d9luZJeesSXSkDaCU-0HSaRzQ&usqp=CAU',
            artistPfp:
                'https://www.famousbirthdays.com/headshots/zendaya-coleman-3.jpg',
            artistName: '@Zendaya',
            bidAmount: '₹3000',
            noOfCmnts: '5',
            noOfLikes: '2',
          );
        },
        itemCount: 5,
      ),
    );
  }
}
