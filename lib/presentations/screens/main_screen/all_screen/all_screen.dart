import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'All Arts',
          style: kHeadStyle.copyWith(
            fontSize: 30.sp,
          ),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return PostCard(
            art:
                'https://images.unsplash.com/photo-1615184697985-c9bde1b07da7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWJzdHJhY3QlMjBhcnR8ZW58MHx8MHx8&w=1000&q=80',
            artistPfp:
                'https://yt3.ggpht.com/Qbm3F5ABqoDyD9NUN9uU4IfWsjIIwc7ttTRuZCveyPQEkPlyJsGFzzed0uoIw3WSxqZfPB7eww=s900-c-k-c0x00ffffff-no-rj',
            artistName: '@Haniya',
            bidAmount: '₹6000',
            noOfCmnts: '8',
            noOfLikes: '10',
          );
        },
        itemCount: 5,
      ),
    );
  }
}
