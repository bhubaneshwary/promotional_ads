import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromotionsSection extends StatelessWidget {
  const PromotionsSection({super.key, required this.images});
  final List<PromotionImage> images;

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: images
                  .map(
                    (url) => Padding(
                      key: Key(url.id),
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: SvgPicture.asset(
                        url.src,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SmoothPageIndicator(
                controller: _pageController,
                count: images.length,
                effect: const ExpandingDotsEffect(
                  spacing: 4.0,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
