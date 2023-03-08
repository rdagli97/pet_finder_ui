import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui1/consts/add_space.dart';
import 'package:ui1/consts/colors.dart';
import 'package:ui1/consts/padding_skills.dart';
import 'package:ui1/utils/category_cards.dart';
import 'package:ui1/utils/custom_text.dart';
import 'package:ui1/utils/pet_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<List<dynamic>> petCategoryList = [
    ["assets/dogicon.png", "dog"],
    ["assets/caticon.png", "cat"],
    ["assets/birdicon.png", "bird"],
    ["assets/rabbiticon.png", "rabbit"],
    ["assets/plusicon.png", "others"],
  ];
  final List petCardList = [
    "assets/dog1.png",
    'assets/cutedog2.png',
    'assets/cutecat.png',
    'assets/cutecat2.png',
  ];

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  symetricH8V10,
              child: Row(
                children: [
                  // pp
                  Image.asset(
                    "assets/profile1.png",
                    scale: 10,
                  ),
                  addHorizontalSpace(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // hello text
                      CustomText(
                        text: 'Hello!',
                        color: baseTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                      // Name text
                      CustomText(
                        text: 'Ramo is here',
                        color: buttonColor,
                      ),
                    ],
                  ),
                  const Spacer(),
                  // notification icon
                  const Icon(Icons.notifications_on_sharp),
                ],
              ),
            ),
            Padding(
              padding: symetricH8,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search your favorite pet...',
                  hintStyle: TextStyle(
                    color: subtitleColor,
                  ),
                  filled: true,
                  fillColor: backgroundColor,
                  prefixIcon: Icon(
                    Icons.search,
                    color: baseTextColor,
                  ),
                  suffixIcon: Icon(
                    Icons.settings_applications_rounded,
                    size: 36,
                    color: activeColor,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            // pet category text
            Padding(
              padding: onlyLeft8,
              child: CustomText(
                text: 'Pet Category',
                color: baseTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            addVerticalSpace(10),
            // category listview
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: petCategoryList.length,
                itemBuilder: (context, index) {
                  return CategoryCards(
                    imagePath: petCategoryList[index][0],
                    scale: 4,
                    text: petCategoryList[index][1],
                  );
                },
              ),
            ),
            // gridview
            Expanded(
              child: GridView.builder(
                itemCount: petCardList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return PetCards(imagePath: petCardList[index]);
                },
              ),
            ),
          ],
        ),
        // bottom navigation bar
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.flip,
          items: const [
            TabItem(icon: Icons.home, title: "Home"),
            TabItem(icon: Icons.search, title: "Search"),
            TabItem(icon: Icons.add, title: "Add"),
            TabItem(icon: Icons.message, title: "Messages"),
            TabItem(icon: Icons.account_circle_rounded, title: "Profile"),
          ],
          initialActiveIndex: 0,
          backgroundColor: activeColor,
          activeColor: backgroundColor,
        ),
      ),
    );
  }
}
