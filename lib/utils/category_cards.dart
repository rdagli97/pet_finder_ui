import 'package:flutter/material.dart';
import 'package:ui1/consts/add_space.dart';
import 'package:ui1/consts/colors.dart';
import 'package:ui1/utils/custom_text.dart';

class CategoryCards extends StatelessWidget {
  final String imagePath;
  final String text;
  final double? scale;
  const CategoryCards({
    super.key,
    required this.imagePath,
    required this.text,
    this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // icon image
          Image.asset(
            imagePath,
            scale: scale,
          ),
          addVerticalSpace(10),
          // name of animal text
          CustomText(
            text: text,
            color: baseTextColor,
          ),
        ],
      ),
    );
  }
}
