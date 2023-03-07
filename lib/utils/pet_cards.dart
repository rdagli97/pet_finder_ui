import 'package:flutter/material.dart';
import 'package:ui1/consts/add_space.dart';
import 'package:ui1/consts/colors.dart';
import 'package:ui1/utils/custom_text.dart';

class PetCards extends StatelessWidget {
  final double? scale;
  final String imagePath;
  const PetCards({super.key, this.scale, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 16),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 200,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: // Image
                Image.asset(
              imagePath,
              scale: scale,
            ),
          ),
          addVerticalSpace(5),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name of animal text
                    CustomText(
                      text: 'Cute Animal',
                      color: baseTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    Row(
                      children: [
                        // location icon
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 14,
                        ),
                        // adress text
                        CustomText(
                          text: 'Near Area',
                          color: subtitleColor,
                          fontSize: 12,
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                // like icon
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
