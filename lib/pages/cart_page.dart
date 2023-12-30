import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';

class CartPage extends StatelessWidget {
  static String id = "CartPage";
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        backgroundColor: mainColor,
      ),
    );
  }
}