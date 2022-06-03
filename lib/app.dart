import 'package:artsophia/presentations/screens/screens_and_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'presentations/constants/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        cacheImage(context, images);
        return MaterialApp(
          title: 'Artofia',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.dongle().fontFamily,
            primaryColor: kPrimaryColor,
            // bottomSheetTheme: const BottomSheetThemeData(
            //   backgroundColor: kBackGroundColor,
            //   modalBackgroundColor: kBackGroundColor,
            // ),
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kWhiteColor.withOpacity(
                    0.5,
                  ),
                ),
              ),
            ),
            primarySwatch: colorCustom,
          ),
          home: MainScreen(),
        );
      },
    );
  }
}
