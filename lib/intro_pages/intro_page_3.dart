import 'package:flutter/material.dart';
import 'package:ui1/consts/add_space.dart';
import 'package:ui1/consts/colors.dart';
import 'package:ui1/utils/custom_text.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // image
          Image.asset('assets/cat.png'),
          // title
          CustomText(
            text: 'Are you ready to find your ',
            color: baseTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          addVerticalSpace(5),
          // title 2
          CustomText(
            text: 'best friend?',
            color: baseTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          addVerticalSpace(20),
          // subtitle
          CustomText(
            text: "Let's dive in",
            color: subtitleColor,
          ),
        ],
      ),
    );
  }
}
