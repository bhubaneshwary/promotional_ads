import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';

class PromotionalAdsData {
  PromotionalAdsModel get data {
    List<Promotion> promotions = [
      const Promotion(
        backgroundColor: Color(0xFF7BC9E1),
        title: "CATSAN",
        description: "From the second packaging",
        discount: "-50%",
        logo: ImageModel(
          id: '1',
          src: 'assets/images/promotions/catsan.png',
        ),
      ),
      const Promotion(
        backgroundColor: Color(0xFFCBA7E2),
        title: "ANCHOR",
        description: "From the third packaging",
        discount: "-20%",
        logo: ImageModel(
          id: '1',
          src: 'assets/images/promotions/anchor.png',
        ),
      ),
    ];
    return PromotionalAdsModel(
      promotions: promotions,
      categories: const [
        ShopCategory(
          id: "cat-1",
          title: "Cats",
          color: Color(0xFF6B4BD5),
          backgroundColor: Color(0xFFEFE9FB),
          icon: ImageModel(
            id: "icon-1",
            src: 'assets/images/promotions/cat.png',
          ),
        ),
        ShopCategory(
          id: "dog-2",
          title: "Dogs",
          color: Color(0xFF9C7660),
          backgroundColor: Color(0xFFF0ECEA),
          icon: ImageModel(
            id: "icon-1",
            src: 'assets/images/promotions/dog.png',
          ),
        ),
        ShopCategory(
          id: "cat-3",
          title: "Rhino",
          color: Color(0xFF71AD81),
          backgroundColor: Color(0xFFE6F5EC),
          icon: ImageModel(
            id: "icon-1",
            src: 'assets/images/promotions/rhino.png',
          ),
        ),
        ShopCategory(
          id: "cat-4",
          title: "Birds",
          color: Color(0xFFF3AC49),
          backgroundColor: Color(0xFFF7F3E4),
          icon: ImageModel(
            id: "icon-1",
            src: 'assets/images/promotions/bird.png',
          ),
        ),
        ShopCategory(
          id: "cat-5",
          title: "Elephant",
          color: Color(0xFF667BC4),
          backgroundColor: Color(0xFFE9EFFA),
          icon: ImageModel(
            id: "icon-1",
            src: 'assets/images/promotions/elephant.png',
          ),
        ),
        ShopCategory(
          id: "cat-6",
          title: "Horse",
          color: Color(0xFFAC66C4),
          backgroundColor: Color(0xFFF3E9FA),
          icon: ImageModel(
            id: "icon-1",
            src: 'assets/images/promotions/horse.png',
          ),
        )
      ],
    );
  }
}
