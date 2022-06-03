import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyEventCard extends StatelessWidget {
  const MyEventCard({
    Key? key,
    required this.eventPic,
  }) : super(key: key);

  final String eventPic;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: 45.h,
          child: Card(
            color: kPrimaryColor,
            margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Kalaalai',
                      style: kHeadStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: 35.h,
                          width: 35.w,
                          child: Image.network(
                            eventPic,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Time',
                      style: kHeadStyle.copyWith(fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text(
                          '18/05/2022',
                          style: kHeadStyle,
                        ),
                        kWidth,
                        Text(
                          '-',
                          style: kHeadStyle,
                        ),
                        kWidth,
                        Padding(
                          padding: EdgeInsets.only(right: 2.w),
                          child: Text(
                            '10:00 AM',
                            style: kHeadStyle,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Place',
                      style: kHeadStyle.copyWith(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Kochi, Ernakulam',
                      style: kHeadStyle,
                    ),
                    Text(
                      'Description',
                      style: kHeadStyle.copyWith(fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Container(
                          constraints: const BoxConstraints(maxWidth: 200),
                          child: Text(
                            'Welcome all to the daVinci code event. This is the place where you can find many arts and buy it.',
                            style: kHeadStyle.copyWith(height: 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


