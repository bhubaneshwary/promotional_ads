import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/promotion_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromotionsSection extends StatelessWidget {
  const PromotionsSection({super.key, required this.promotions});
  final List<Promotion> promotions;

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: promotions
                  .map(
                    (promotion) => Container(
                      padding: const EdgeInsets.only(right: 16),
                      child: PromotionCard(promotion: promotion),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: promotions.length,
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
