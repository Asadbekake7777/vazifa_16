import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OnBoardingWid extends StatelessWidget {
  final int index;
  final Function() onTap;

  const OnBoardingWid({
    required this.index,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ZoomTapAnimation(
                  child: Image.asset("assets/images/onboarding.jpg", height: 700, width: 500,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
