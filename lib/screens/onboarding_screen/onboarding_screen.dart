import 'package:flutter/material.dart';
import 'package:flutter_kidzone/models/onboarding_models/onboarding_models.dart';
import 'package:flutter_kidzone/widgets/onboarding_widgets/onboarding_button_widget.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // stacked widget
    return Scaffold(
      body: PageView.builder(
        itemCount: OnboardingModels.onboardingModels.length,
        itemBuilder: (BuildContext context, int index) {
          var items = OnboardingModels.onboardingModels[index];
          return Container(
            decoration: BoxDecoration(
              color: Color(int.parse(items.backgroundColor)),
            ),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 72),
            child: Column(
              children: [
                // !logo
                Image.asset(
                  "assets/images/logo.png",
                ),
                const Gap(32),
                // !child image (dynamicx)
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 274,
                  child: Image.asset(
                    items.imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
                const Gap(52),
                // !text (dynamic)
                Text(
                  items.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(78),
                // !button
                const OnboardingButtonWidget(),
                // !button navigator
                // Image.asset("assets/images/onboarding/head.png")
              ],
            ),
          );
        },
      ),
    );
  }
}
