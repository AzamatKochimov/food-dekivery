import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/all_meals.dart';
import 'package:food_delivery/widgets/appbar_widget.dart';
import 'package:food_delivery/widgets/food_types_widget.dart';
import 'package:food_delivery/widgets/search_box_widget.dart';
import 'package:food_delivery/widgets/special_banner_widget.dart';

class UserHomePage extends StatefulWidget {
  static String id = "UserHomePage";
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<UserHomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 520, left: 100),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(70),
            ),
            child: Transform.rotate(
              angle:
                  30 * (3.141592653589793 / 180), // Convert degrees to radians
              child: Image.asset(
                'assets/images/Pattern2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: const EdgeInsets.only(top: 48, left: 0, right: 0),
            child: const Column(
              children: [
                // A P P B A R
                MyAppBar(),
                // S E A R C H B O X
                CustomSearchBox(),
                // B A N N E R SPECIAL OFFER
                SpecialBanner(),
                // D O T s to open other offers
                DotsDetection(),
                // FAST FOOD TYPES
                SizedBox(height: 60, child: FoodList()),
                // F A S T  F O O D  C A R D S
                SizedBox(height: 230, child: FastFoodCard()),
                //  S E E  A L L  M E A L S
                AllMeals(),
                // Navigation Bar
              ],
            ),
          ),
        ),
      ],
    );
  }
}
