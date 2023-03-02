import 'package:flutter/material.dart';
import 'package:flutter_kidzone/config/routes.dart';

class OnboardingButtonWidget extends StatelessWidget {
  const OnboardingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 274, height: 64),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          Routes.homeScreen,
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFF2659AC),
          backgroundColor: Colors.white,
          elevation: 3, //elevation of button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(20),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
        child: const Text("START"),
      ),
    );
  }
}
