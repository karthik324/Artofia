import 'package:artsophia/presentations/constants/constants.dart';
import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        title: Text(
          'Edit Profile',
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
          kSmallHeight,
          SizedBox(
            height: 15.h,
            width: 30.w,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  radius: 12.h,
                  backgroundImage: const NetworkImage(
                    'https://miro.medium.com/max/3150/1*lcR8NNnnKzOS6Ma-VJJTCQ.jpeg',
                  ),
                ),
                Positioned(
                  right: 6.w,
                  top: 8.5.h,
                  child: SizedBox(
                    height: 1.h,
                    width: 2.w,
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.camera_alt,
                        color: kWhiteColor,
                        size: 3.5.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CustomTextField(
            iconData: Icons.person,
            hintText: 'Name',
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          const CustomTextField(
            iconData: Icons.info_rounded,
            hintText: 'Bio',
            maxLength: 40,
            maxLines: 2,
            textInputAction: TextInputAction.done,
          ),
          Stack(
            children: [
              Container(
                height: 20.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Expeditions_Header_Artwork_Card_Size_1.max-1000x1000.jpg',
                    ),
                  ),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              Align(
                heightFactor: 0.46.h,
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {},
                  color: kWhiteColor,
                  icon: Icon(
                    Icons.image,
                    size: 10.w,
                  ),
                ),
              ),
            ],
          ),
          kSmallHeight,
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Update Profile',
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
