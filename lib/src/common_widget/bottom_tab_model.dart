import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:promotion_ads/src/routing/main_route.dart';

class BottomTabModel extends Equatable {
  const BottomTabModel(
      {required this.label, required this.icon, required this.route});
  final String label;
  final IconData icon;
  final String route;

  List<Object?> get props => throw UnimplementedError();
}

final List<BottomTabModel> tabs = [
  const BottomTabModel(
      label: "Home", icon: Icons.home, route: MyAppRoute.homeRouterName),
  const BottomTabModel(
      label: "Catalogue",
      icon: Icons.search,
      route: MyAppRoute.splashRouterName),
  const BottomTabModel(
      label: "Cart",
      icon: Icons.shopping_cart,
      route: MyAppRoute.splashRouterName),
  const BottomTabModel(
      label: "Shop",
      icon: Icons.location_pin,
      route: MyAppRoute.splashRouterName),
  const BottomTabModel(
      label: "Profile",
      icon: Icons.person,
      route: MyAppRoute.promotionAdsRouterName),
];
