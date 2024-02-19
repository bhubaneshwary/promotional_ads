import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/onboarding/presentation/widget/onboarding_layout.dart';

class OnboardingStep2 extends StatelessWidget {
  const OnboardingStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingLayout(
      assetUrl: 'assets/icons/onboard-ii.svg',
      assetLabel: 'Onboarding stage 2',
      displayText: 'Walk into the shop and scan the shops QR',
      labelText: 'You can find the button “SCAN SHOP” in the bottom navigation',
      scaleFactor: 0.9,
    );
  }
}
