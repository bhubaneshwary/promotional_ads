import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:promotion_ads/src/services/promotional_ads/data/models/promotional_ads_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromotionsSection2 extends StatefulWidget {
  const PromotionsSection2({super.key, required this.images});
  final List<PromotionImage> images;

  @override
  State<StatefulWidget> createState() => _PromotionSection(images: images);
}

class _PromotionSection extends State<PromotionsSection2> {
  _PromotionSection({required this.images});

  final List<PromotionImage> images;
  final PageController pageController = PageController(viewportFraction: 0.9);

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final double currentPage = pageController.page ?? 0;
                  final double padding =
                      (1.0 - (currentPage - index).abs()) * 16.0;
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, padding, 0),
                    child: SvgPicture.asset(
                      images[index].src,
                      width: 300,
                      fit: BoxFit.fill,
                      key: Key(images[index].id),
                    ),
                  );
                }),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SmoothPageIndicator(
                controller: pageController,
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

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
