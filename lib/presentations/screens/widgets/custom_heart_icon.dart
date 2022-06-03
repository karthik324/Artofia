import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomHeartIcon extends StatefulWidget {
  const CustomHeartIcon({Key? key}) : super(key: key);

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<CustomHeartIcon> {
  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHighlightChanged: (value) {
        setState(() {
          isHighlighted = !isHighlighted;
        });
      },
      onTap: () {
        setState(() {
          isPressed2 = !isPressed2;
        });
      },
      child: isPressed2
          ? const Icon(
              Icons.favorite_border,
              color: kWhiteColor,
              size: 24,
            )
          : Icon(
              Icons.favorite,
              color: Colors.pink.withOpacity(1.0),
              size: 24,
            ),
    );
  }
}
