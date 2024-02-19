import 'package:flutter/material.dart';
import 'package:promotion_ads/src/common_widget/custom_side_drawer.dart';
import 'package:promotion_ads/src/common_widget/layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Builder(
              builder: (innerContext) => GestureDetector(
                onTap: () => Scaffold.of(innerContext).openDrawer(),
                child: const Icon(Icons.menu_rounded),
              ),
            )
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () => {},
            child: const Icon(Icons.notifications),
          )
        ],
      ),
      backgroundColor: Colors.white,
      drawer: CustomSideDrawer(),
    ));
  }
}
