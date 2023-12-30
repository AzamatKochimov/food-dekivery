import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';
import 'package:food_delivery/pages/onboarding_second_page.dart';

class OnboardingFirstPage extends StatelessWidget {
  static String id = "OnboardingFirstPage";
  const OnboardingFirstPage({super.key});

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
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/splash-1.png',
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        'Select the\nFavorities Menu',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      '''Now eat well, don't leave the house,You can 
choose your favorite food only with 
one click''',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 55),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, OnboardingSecondPage.id);
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
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Skip'),
                          SizedBox(
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/Ellipse2.png'),
                                Image.asset('assets/images/Ellipse1.png'),
                                Image.asset('assets/images/Ellipse2.png'),
                              ],
                            ),
                          ),
                          Image.asset('assets/images/Arrow Forward.png'),
                        ],
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
