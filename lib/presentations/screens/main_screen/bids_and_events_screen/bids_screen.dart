import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';

enum Menu {
  myEvents,
  paidOrders,
}

class BidsScreen extends StatelessWidget {
  BidsScreen({Key? key}) : super(key: key);

  final List<Widget> _tabs = [
    Tab(
      child: Text(
        'Bids',
        style: kHeadStyle,
      ),
    ),
    Tab(
      child: Text(
        'Events',
        style: kHeadStyle,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabBarView = [
      ListView.builder(
        itemBuilder: (context, index) {
          return const BidArtCard(
            art:
                'https://lh6.ggpht.com/HlgucZ0ylJAfZgusynnUwxNIgIp5htNhShF559x3dRXiuy_UdP3UQVLYW6c=s1200',
            amount: '3000',
          );
        },
        itemCount: 5,
      ),
      ListView.builder(
        itemBuilder: (context, index) {
          return const EventCard(
            event:
                'https://3.imimg.com/data3/CK/HV/MY-10570443/corporate-events-500x500.jpg',
            eventName: 'The Davinci Code',
          );
        },
        itemCount: 5,
      )
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kBackGroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bids and Events Manage',
            style: kHeadStyle.copyWith(
              fontSize: 30.sp,
            ),
          ),
          bottom: TabBar(
            tabs: _tabs,
            indicatorColor: kBackGroundColor,
          ),
          actions: [
            PopupMenuButton<Menu>(
              color: kBackGroundColor,
              icon: const Icon(
                Icons.more_vert_rounded,
                color: kWhiteColor,
              ),
              itemBuilder: (BuildContext con) => <PopupMenuEntry<Menu>>[
                PopupMenuItem<Menu>(
                  value: Menu.paidOrders,
                  child: Text(
                    'Paid Orders',
                    style: kHeadStyle,
                  ),
                  onTap: () {
                    debugPrint('hai');
                    Future.delayed(const Duration(seconds: 0)).then(
                      (value) => pushNewScreen(
                        context,
                        screen: MyBidsAndEventsScreen(),
                      ),
                    );
                  },
                ),
                PopupMenuItem<Menu>(
                  value: Menu.myEvents,
                  child: Text(
                    'My Events',
                    style: kHeadStyle,
                  ),
                  onTap: () {
                    Future.delayed(const Duration(seconds: 0)).then(
                      (value) => pushNewScreen(
                        context,
                        screen: MyBidsAndEventsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: _tabBarView,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
