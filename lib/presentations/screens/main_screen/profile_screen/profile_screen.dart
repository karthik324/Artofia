import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              print('clik');
            },
            child: Padding(
              padding: EdgeInsets.only(right: 3.w),
              child: const Icon(
                Ionicons.log_out_outline,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          ProfileTop(),
          ProfileContent(),
        ],
      ),
    );
  }
}

