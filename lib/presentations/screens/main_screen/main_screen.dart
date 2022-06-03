import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = PersistentTabController(initialIndex: 0);

  bool isScrollControl = false;

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const AllScreen(),
      const MessageScreen(),
      BidsScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: ("Home"),
        iconSize: 4.h,
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.border_all),
        title: ("All"),
        iconSize: 4.h,
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 0.9.h),
          child: const FaIcon(FontAwesomeIcons.message),
        ),
        title: ("Message"),
        iconSize: 3.4.h,
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 0.6.h),
          child: const FaIcon(FontAwesomeIcons.moneyBills),
        ),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
        title: ('Bids'),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline),
        title: ("Profile"),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: Colors.grey,
        iconSize: 4.h,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is UserScrollNotification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() {
              isScrollControl = false;
            });
            print('down');
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() {
              isScrollControl = true;
            });
            print('up');
          }
        }
        return false;
      },
      child: PersistentTabView(
        context,
        hideNavigationBar: isScrollControl,
        screens: _buildScreens(),
        items: _navBarsItems(),
        controller: _controller,
        navBarStyle: NavBarStyle.style13,
        backgroundColor: kBackGroundColor,
      ),
    );
  }
}
