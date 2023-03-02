import 'package:flutter/material.dart';
import 'package:flutter_kidzone/config/routes.dart';
import 'package:flutter_kidzone/screens/home_screen/home_screen.dart';
import 'package:flutter_kidzone/screens/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.onboardingScreen,
      routes: {
        Routes.onboardingScreen: (context) => const OnboardingScreen(),
        Routes.homeScreen: (context) => const HomeScreen(),
      },
    );
  }
}
