import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';

class PromotionCard extends StatefulWidget {
  const PromotionCard({super.key, required this.promotion});
  final Promotion promotion;
  @override
  State<StatefulWidget> createState() => _PromotionalCard(promotion: promotion);
}

class _PromotionalCard extends State<PromotionCard> {
  _PromotionalCard({required this.promotion});

  final Promotion promotion;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              color: promotion.backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 40.0, 0, 16.0),
                  child: Image.asset(
                    promotion.logo.src,
                    height: promotion.logo.heigt ?? 140,
                    width: promotion.logo.width ?? 80,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 32, 0, 16),
                  child: Column(
                    children: [
                      Text(
                        promotion.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        promotion.discount,
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                      Center(
                        heightFactor: 0.5,
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            promotion.description,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
          child: Container(
            width: 180,
            height: 24,
            padding: EdgeInsets.only(top: 4.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: const Text(
              "09-29 February",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
