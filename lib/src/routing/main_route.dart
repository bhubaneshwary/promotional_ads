import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promotion_ads/src/services/home/presentation/screen/home_screen.dart';
import 'package:promotion_ads/src/services/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/screen/promotional_ads_screen.dart';

class MyAppRoute {
  static const String splashRouterPath = '/';
  static const String splashRouterName = 'splash';
  static const String homeRouterPath = '/home';
  static const String homeRouterName = 'home';
  static const String promotionAdsRouterPath = '/promotion-ads';
  static const String promotionAdsRouterName = 'promotion-ads';

  static final List<GoRoute> allRoutes = [
    GoRoute(
      path: splashRouterPath,
      name: splashRouterName,
      builder: (BuildContext context, GoRouterState state) =>
          const OnboardingScreen(),
    ),
    GoRoute(
      path: homeRouterPath,
      name: homeRouterName,
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: promotionAdsRouterPath,
      name: promotionAdsRouterName,
      builder: (BuildContext context, GoRouterState state) =>
          const PromotionalAds(),
    ),
  ];

  static final GoRouter myRoutes = GoRouter(
      routes: allRoutes,
      errorPageBuilder: (context, state) => const MaterialPage(
          key: ValueKey('error-page'),
          child: Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          )),
      initialLocation: "/");
}
