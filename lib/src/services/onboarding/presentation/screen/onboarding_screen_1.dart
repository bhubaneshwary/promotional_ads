import 'package:flutter/material.dart';
import 'package:promotion_ads/src/services/onboarding/presentation/widget/onboarding_layout.dart';

class OnboardingStep1 extends StatelessWidget {
  const OnboardingStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingLayout(
      assetUrl: 'assets/icons/onboard-i.svg',
      assetLabel: 'Onboarding stage 1',
      displayText: 'Save your precious time with Scan and Go',
      labelText: 'Lets make the shopping quicker',
    );
  }
}
