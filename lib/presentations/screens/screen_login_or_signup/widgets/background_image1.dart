import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';

class BackGroundImage1 extends StatelessWidget {
  final ImageProvider image;
  const BackGroundImage1({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          kBlackColor,
          Colors.transparent,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [
            kBlackColor,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
        ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          height: double.maxFinite,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
              colorFilter: const ColorFilter.mode(
                Colors.black26,
                BlendMode.darken,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
