import 'package:flutter_kidzone/utils/color_constants.dart';

class OnboardingModels {
  String imagePath, name, backgroundColor;
  OnboardingModels({
    required this.imagePath,
    required this.name,
    required this.backgroundColor,
  });

  static List<OnboardingModels> onboardingModels = [
    OnboardingModels(
      imagePath: 'assets/images/onboarding/onboarding1.png',
      name: 'Have Fun while You\n Learn Your Alphabets',
      backgroundColor: ColorConstants.backgroundColorOnboarding1,
    ),
    OnboardingModels(
      imagePath: 'assets/images/onboarding/onboarding2.png',
      name: 'Learn Sound and\n Proper Pronunciation',
      backgroundColor: ColorConstants.backgroundColorOnboarding2,
    ),
    OnboardingModels(
      imagePath: 'assets/images/onboarding/onboarding3.png',
      name: 'Proper Recognition of\n the 26 Alphabets',
      backgroundColor: ColorConstants.backgroundColorOnboarding3,
    ),
  ];
}
