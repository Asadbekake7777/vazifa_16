import 'package:flutter/material.dart';
import 'package:vazifa_16/pages/boarding.dart';
import 'package:vazifa_16/pages/boarding_1.dart';
import 'package:vazifa_16/pages/boarding_2.dart';
import 'package:vazifa_16/pages/boarding_3.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                OnBoardingWid(
                  index: 0,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(seconds: 3),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidget(
                  index: 0,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidgets(
                  index: 1,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidgetst(
                  index: 2,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
