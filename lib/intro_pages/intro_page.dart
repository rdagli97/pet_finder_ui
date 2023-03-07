import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui1/intro_pages/intro_page_1.dart';
import 'package:ui1/intro_pages/intro_page_2.dart';
import 'package:ui1/intro_pages/intro_page_3.dart';
import 'package:ui1/pages/home_page.dart';
import 'package:ui1/consts/colors.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  bool isFirstPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page view
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                isFirstPage = (value == 0);
                isLastPage = (value == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip text

                TextButton(
                  onPressed: () {
                    isFirstPage ? jumpToLastPage() : previousPage();
                  },
                  child: isFirstPage
                      ? Text(
                          'skip',
                          style: TextStyle(
                            color: buttonColor,
                          ),
                        )
                      : Text(
                          'previous',
                          style: TextStyle(
                            color: buttonColor,
                          ),
                        ),
                ),

                // dot indicators
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),

                // next or done text
                TextButton(
                  onPressed: () {
                    setState(() {
                      isFirstPage = false;
                    });
                    isLastPage ? pushHomePage(context) : nextPage();
                  },
                  child: isLastPage
                      ? Text(
                          'done',
                          style: TextStyle(
                            color: buttonColor,
                          ),
                        )
                      : Text(
                          'next',
                          style: TextStyle(
                            color: buttonColor,
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

  Future<dynamic> pushHomePage(BuildContext context) {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  Future<void> nextPage() {
    return _controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  Future<void> previousPage() {
    return _controller.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void jumpToLastPage() => _controller.jumpToPage(2);
}
