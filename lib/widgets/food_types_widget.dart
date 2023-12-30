import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';
import 'package:food_delivery/data/food_data.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: fastFoodData.length,
      itemBuilder: (BuildContext context, int index) {
        FastFoodItem foodItem = fastFoodData[index];

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            margin:
                EdgeInsets.only(left: index == 0 ? 30 : 10, top: 20, right: 10),
            width: 126,
            height: 150,
            decoration: BoxDecoration(
              color: index == selectedIndex ? mainColor : whiteColor,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: index == selectedIndex ? mainColor : foodTypeBorderColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 5),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                    child: foodItem.image),
                const SizedBox(width: 5),
                Text(
                  foodItem.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: index == selectedIndex ?Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FastFoodCard extends StatelessWidget {
  const FastFoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fastFoodCardItems.length,
        itemBuilder: (BuildContext context, int index) {
          FastFoodCardItem foodItem = fastFoodCardItems[index];

          return Card(
            elevation: 0.3,
            shadowColor: Colors.redAccent,
            margin: EdgeInsets.only(
              left: index == 0 ? 75.0 : 10.0,
              right: 10,
              top: 10,
              bottom: 5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Image.asset('assets/images/burger1.png'),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        foodItem.rate.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodItem.name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        foodItem.details,
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '\$${foodItem.price}',
                                  style: const TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const Text(
                                  '.00',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/icons/add.png',
                                  width: 24,
                                  height: 24,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
