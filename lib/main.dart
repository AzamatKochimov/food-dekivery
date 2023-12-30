import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart_page.dart';
import 'package:food_delivery/pages/chat_page.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/onboarding_first_page.dart';
import 'package:food_delivery/pages/onboarding_second_page.dart';
import 'package:food_delivery/pages/profile_page.dart';
import 'package:food_delivery/pages/splash_screen.dart';
import 'package:food_delivery/pages/user_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (ctx) => const SplashScreen(),
        OnboardingFirstPage.id: (ctx) => const OnboardingFirstPage(),
        OnboardingSecondPage.id: (ctx) => const OnboardingSecondPage(),
        LoginPage.id: (ctx) => const LoginPage(),
        UserHomePage.id: (ctx) => const UserHomePage(),
        ProfilePage.id: (ctx) => const ProfilePage(),
        CartPage.id: (ctx) => const CartPage(),
        ChatPage.id: (ctx) => const ChatPage(),
      },
    );
  }
}
