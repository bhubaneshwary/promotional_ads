import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promotion_ads/src/routing/main_route.dart';

class CustomSideDrawer extends StatefulWidget {
  const CustomSideDrawer({super.key});

  @override
  State<CustomSideDrawer> createState() => _CustomSideDrawerState();
}

class _CustomSideDrawerState extends State<CustomSideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom,
            right: 12,
            left: 12,
          ),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  CupertinoIcons.home,
                  color: Colors.purple,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  GoRouter.of(context).pushNamed(MyAppRoute.homeRouterName);
                },
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: Colors.yellow,
                ),
                title: const Text(
                  "Promotional Ads",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  GoRouter.of(context)
                      .pushNamed(MyAppRoute.promotionAdsRouterName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
