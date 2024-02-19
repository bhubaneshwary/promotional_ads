import 'package:flutter/material.dart';
import 'package:promotion_ads/src/common_widget/layout.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/datasource/promotional_ads_data.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/categories.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/delivery_details.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/discount_card.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/discount_details.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/promotions.dart';
import 'package:promotion_ads/src/services/promotional_ads/presentation/widget/search.dart';

class PromotionalAds extends StatefulWidget {
  const PromotionalAds({super.key});

  @override
  State<StatefulWidget> createState() => _PromotionalAds();
}

class _PromotionalAds extends State<StatefulWidget> {
  final PromotionalAdsModel data;
  final List<Promotion> promotions;
  final List<ShopCategory> categories;

  _PromotionalAds({Key? key})
      : data = PromotionalAdsData().data,
        promotions = PromotionalAdsData().data.promotions,
        categories = PromotionalAdsData().data.categories,
        super();

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchSection(),
            PromotionsSection(promotions: promotions),
            CategoriesSection(categories: categories),
            const DiscountCard(),
            const DeliveryDetails(),
            const DiscountDetails()
          ],
        ),
      ),
    );
  }
}
