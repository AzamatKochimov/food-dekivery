import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';
import 'package:food_delivery/data/food_data.dart';

class AllMeals extends StatelessWidget {
  const AllMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5, left: 30, right: 30),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Popular Meal Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              IconButton(
                onPressed: () {},
                icon: const Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 30, right: 30),
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Material(
            elevation: 0.5,
            shadowColor: Colors.redAccent,
            borderRadius: BorderRadius.circular(7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Image.asset(
                        'assets/images/pepper-pizza.png',
                        width: 64,
                        height: 64,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Pepper Pizza',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('5kg box of Pizza'),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    '\$${mealItemData[3].price}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
