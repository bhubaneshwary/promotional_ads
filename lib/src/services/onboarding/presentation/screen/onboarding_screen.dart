import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promotion_ads/src/routing/main_route.dart';
import 'package:promotion_ads/src/services/onboarding/presentation/screen/onboarding_screen_1.dart';
import 'package:promotion_ads/src/services/onboarding/presentation/screen/onboarding_screen_2..dart';
import 'package:promotion_ads/src/services/onboarding/presentation/screen/onboarding_screen_3..dart';
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _isLastPage = value == 2;
              });
            },
            children: const <Widget>[
              OnboardingStep1(),
              OnboardingStep2(),
              OnboardingStep3()
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            margin: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                          spacing: 8.0,
                          // radius: 4.0,
                          dotWidth: 12.0,
                          dotHeight: 12.0,
                          // paintStyle: PaintingStyle.stroke,
                          // strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.indigo),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20 * 2,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .pushReplacementNamed(MyAppRoute.homeRouterName);
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      _isLastPage
                          ? GestureDetector(
                              onTap: () {
                                GoRouter.of(context).pushReplacementNamed(
                                    MyAppRoute.homeRouterName);
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              },
                              child: const Text(
                                "Next",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
