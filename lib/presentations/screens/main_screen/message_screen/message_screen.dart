import 'package:artsophia/presentations/constants/constants.dart';
import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Community Message',
          style: kHeadStyle.copyWith(
            fontSize: 30.sp,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ListView(
              physics: const PageScrollPhysics(),
              shrinkWrap: true,
              children: [
                BubbleSpecialOne(
                  text: 'Hey guysss!!',
                  color: kPrimaryColor,
                  textStyle: kHeadStyle,
                ),
                BubbleSpecialOne(
                  text: 'Hey how was the day?',
                  isSender: false,
                  color: Colors.grey.shade400,
                  textStyle: kHeadStyle,
                ),
                BubbleSpecialOne(
                  text: 'Yeah it went well :)',
                  color: kPrimaryColor,
                  textStyle: kHeadStyle,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Material(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 1.w),
                  ),
                  color: Colors.white,
                ),
                Flexible(
                  child: TextField(
                    style: kHeadStyle.copyWith(
                      color: kBlackColor,
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                Material(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => {},
                      color: kPrimaryColor,
                    ),
                  ),
                  color: Colors.white,
                ),
              ],
            ),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                ),
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
