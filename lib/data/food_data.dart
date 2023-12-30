import 'package:flutter/material.dart';

class FastFoodItem {
  final String name;
  final Widget image;

  FastFoodItem({
    required this.name,
    required this.image,
  });
}

List<FastFoodItem> fastFoodData = [
  FastFoodItem(
    name: 'Burger',
    image: Image.asset('assets/images/burger type.png', width: 30, height: 30),
  ),
  FastFoodItem(
    name: 'Pizza',
    image: Image.asset('assets/images/pizza type.png', width: 50, height: 50),
  ),
  FastFoodItem(
    name: 'Sandwich',
    image:
        Image.asset('assets/images/sandwich type.png', width: 30, height: 30),
  ),
];

class FastFoodCardItem {
  final String name;
  final String cardImage;
  final String details;
  final int price;
  final double rate;

  FastFoodCardItem({
    required this.name,
    required this.cardImage,
    required this.details,
    required this.price,
    required this.rate,
  });
}

List<FastFoodCardItem> fastFoodCardItems = [
  FastFoodCardItem(
    name: 'Chicken Burger',
    cardImage: 'assets/images/burger1.png',
    details: '100 gr chicken + tomato +\n cheese  Lettuce',
    price: 20,
    rate: 3.8,
  ),
  FastFoodCardItem(
    name: 'Cheese burger',
    cardImage: 'assets/images/burger2.png',
    details: '100 gr meat + onion + tomato\n + Lettuce cheese',
    price: 15,
    rate: 4.5,
  ),
  FastFoodCardItem(
    name: 'Chicken\n burger',
    cardImage: 'assets/images/burger1.png',
    details: '100 gr chicken + tomato\n+ cheese  Lettuce',
    price: 20,
    rate: 3.8,
  ),
  FastFoodCardItem(
    name: 'Cheese burger',
    cardImage: 'assets/images/burger2.png',
    details: '100 gr meat + onion +\ntomato + Lettuce cheese',
    price: 15,
    rate: 4.5,
  ),
];

class MealItemData{
  final String name;
  final String cardImage;
  final String details;
  final int price;

  MealItemData({
    required this.name,
    required this.cardImage,
    required this.details,
    required this.price,
  });

}

List<MealItemData> mealItemData = [
  MealItemData(
    name: 'Chicken Spagetti',
    cardImage: 'assets/images/spaghetty.png',
    details: '1 Big Pack',
    price: 7,
  ),
  MealItemData(
    name: 'Jollof Rice',
    cardImage: 'assets/images/rice.png',
    details: '1 Combo pack',
    price: 10,
  ),
  MealItemData(
    name: 'Fruity Pancakes',
    cardImage: 'assets/images/pancakes.png',
    details: 'Noodle Home',
    price: 12,
  ),
  MealItemData(
    name: 'Pepper Pizza',
    cardImage: 'assets/images/pepper-pizza.png',
    details: '5kg box of Pizza',
    price: 15,
  ),
];
