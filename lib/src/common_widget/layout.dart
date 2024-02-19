import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promotion_ads/src/common_widget/bottom_tab_model.dart';

class Layout extends StatefulWidget {
  const Layout({super.key, required this.child});
  final Widget child;

  @override
  State<StatefulWidget> createState() => _Layout(child: child);
}

class _Layout extends State<StatefulWidget> {
  _Layout({required this.child});
  int _currentIndex = 0;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: buildBottomNavigationBar(),
      body: SafeArea(child: child),
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 1,
          ),
        ],
      ),
      child: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: const Color(0xFFCE606D),
          unselectedItemColor: const Color(0xFFB5B7BE),
          showUnselectedLabels: true,
          onTap: (index) {
            GoRouter.of(context).goNamed(tabs[index].route);
            setState(
              () {
                _currentIndex = index;
              },
            );

            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          items: tabs
              .map(
                (el) => BottomNavigationBarItem(
                  icon: Icon(
                    el.icon,
                  ),
                  label: el.label,
                ),
              )
              .toList()),
    );
  }
}
