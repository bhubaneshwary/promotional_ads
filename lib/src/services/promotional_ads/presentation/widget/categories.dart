import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key, required this.categories});
  final List<ShopCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories
                  .map(
                    (url) => Padding(
                      key: Key(url.id),
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: url.backgroundColor,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              // SvgPicture.asset(
                              //   url.icon.src,
                              //   width: 40,
                              //   height: 40,
                              //   fit: BoxFit.contain,
                              // ),
                              Image.asset(
                                url.icon.src,
                                width: 40,
                                height: 40,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                          Text(
                            url.title,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
