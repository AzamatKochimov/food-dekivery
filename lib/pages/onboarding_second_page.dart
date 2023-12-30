import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';
import 'package:food_delivery/pages/login_page.dart';

class OnboardingSecondPage extends StatelessWidget {
  static String id = "OnboardingSecondPage";
  const OnboardingSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 450),
            child: Image.asset(
              'assets/images/Pattern2.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/splash-2.png',
                  fit: BoxFit.fitWidth,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        'Good food at a\n cheap price',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      'You can eat at expensive\n restaurants with\n affordable price',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500, height: 1.6),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 55),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, LoginPage.id);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: myLinearColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 63.0,
                            vertical: 18,
                          ),
                          child: const Text('Next',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
