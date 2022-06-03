import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyBidsAndEventsScreen extends StatelessWidget {
  MyBidsAndEventsScreen({Key? key}) : super(key: key);

  final List<Widget> _tabs = [
    Tab(
      child: Text(
        'My Bids',
        style: kHeadStyle,
      ),
    ),
    Tab(
      child: Text(
        'My Events',
        style: kHeadStyle,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabBarView = [
      ListView.builder(
        itemBuilder: (context, index) {
          return const MyBidArt(
            art:
                'https://upload.wikimedia.org/wikipedia/commons/7/75/Vincent_van_Gogh_-_Road_with_Cypress_and_Star_-_c._12-15_May_1890.jpg',
          );
        },
        itemCount: 5,
      ),
      ListView.builder(
        itemBuilder: (context, index) {
          return const MyEventCard(
            eventPic:
                'https://media-exp1.licdn.com/dms/image/C4D1BAQGk-9s2mXawOw/company-background_10000/0/1557739594383?e=2147483647&v=beta&t=LXvqifX-2Zy8NPYEqniAREqsG289i8aWGlcXSlcM1kw',
          );
        },
        itemCount: 5,
      ),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Bids and Events',
            style: kHeadStyle.copyWith(
              fontSize: 30.sp,
            ),
          ),
          bottom: TabBar(
            tabs: _tabs,
            indicatorColor: kBackGroundColor,
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: kWhiteColor,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: TabBarView(
          children: _tabBarView,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
