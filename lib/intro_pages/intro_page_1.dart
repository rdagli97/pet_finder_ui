import 'package:flutter/material.dart';
import 'package:ui1/consts/add_space.dart';
import 'package:ui1/consts/colors.dart';
import 'package:ui1/utils/custom_text.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // image
          Image.asset('assets/dogAndCat.png'),
          // title
          CustomText(
            text: 'Find your favorite pet',
            color: baseTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          addVerticalSpace(5),
          // title 2
          CustomText(
            text: 'close to you',
            color: baseTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          addVerticalSpace(20),
          // subtitle
          CustomText(
            text: "Finding the best friend you're looking",
            color: subtitleColor,
          ),
          addVerticalSpace(5),
          //subtitle2
          CustomText(
            text: "has never been easier",
            color: subtitleColor,
          ),
        ],
      ),
    );
  }
}
