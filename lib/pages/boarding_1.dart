import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OnBoardingWidget extends StatelessWidget {
  final int index;
  final Function() onTap;

  const OnBoardingWidget({
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
                Image.asset("assets/images/imagesall.jpg"),
                
                const Text(
                  "Set Your Schedule",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 9),
                const Text(
                  "Quickly see your upcoming event, task,\nconference calls, weather, and more",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),


          Expanded(
            child: Column(
              children: [
                ZoomTapAnimation(
                  child: Container(
                    height: 70,
                    width: 260,
                    decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: Colors.blue.shade900),
                    child: TextButton(
                      onPressed: onTap,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
