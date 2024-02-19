import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingLayout extends StatelessWidget {
  const OnboardingLayout({
    super.key,
    required this.assetUrl,
    required this.assetLabel,
    this.scaleFactor = 1.0,
    this.assetWidth,
    this.assetHeight,
    required this.displayText,
    required this.labelText,
  });

  final String assetUrl;
  final String assetLabel;
  final double? scaleFactor;
  final double? assetWidth;
  final double? assetHeight;
  final String displayText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    ColorScheme ocolor = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 25),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/shofa-brand-primary.svg',
                  semanticsLabel: 'Barnd icon primary',
                ),
                Transform.scale(
                  scale: scaleFactor,
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    assetUrl,
                    semanticsLabel: assetLabel,
                    height: assetHeight,
                    width: assetWidth,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    displayText,
                    style: TextStyle()?.copyWith(color: ocolor.secondary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    labelText,
                    style: TextStyle(fontSize: 18)
                        ?.copyWith(color: ocolor.onSecondaryContainer),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
