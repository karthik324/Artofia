import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReqToBeArtistScreen extends StatelessWidget {
  const ReqToBeArtistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        title: Text(
          'Request to be an Artist',
          style: kBigHeadStyle.copyWith(
            fontSize: 30.sp,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kWhiteColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          CustomTextField(
            iconData: Icons.person,
            hintText: 'Name',
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          CustomTextField(
            iconData: Icons.info_rounded,
            hintText: 'Why do you want to be an artist?',
            maxLength: 40,
            maxLines: 2,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(
            height: 40.h,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Submit',
              style: kHeadStyle,
            ),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
          )
        ],
      ),
    );
  }
}
