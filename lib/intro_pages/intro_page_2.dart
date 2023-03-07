import 'package:flutter/material.dart';
import 'package:ui1/consts/add_space.dart';
import 'package:ui1/consts/colors.dart';
import 'package:ui1/utils/custom_text.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // image
          Image.asset('assets/dogAndCat2.png'),
          // title
          CustomText(
            text: 'Easily search for classifieds ',
            color: baseTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          addVerticalSpace(5),
          // title 2
          CustomText(
            text: 'near your home',
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
