import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/onboarding/presentation/widget/onboarding_layout.dart';

class OnboardingStep3 extends StatelessWidget {
  const OnboardingStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingLayout(
      assetUrl: 'assets/icons/onboard-iii.svg',
      assetLabel: 'Onboarding stage 3',
      displayText: 'Scan Items and pay from phone',
      labelText: 'No hassle on waiting in the counter anymore',
      scaleFactor: 0.9,
    );
  }
}
