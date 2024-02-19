import 'package:flutter/material.dart';

class DiscountDetails extends StatelessWidget {
  const DiscountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Discount and promotions",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          ),
          GestureDetector(
              onTap: () {
                print("Clicked on all");
              },
              child: const Text(
                "All",
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
