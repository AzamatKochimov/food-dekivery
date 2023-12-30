import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 30,
        right: 30,
        bottom: 10,
      ),
      decoration: const BoxDecoration(
        gradient: searchColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: 'Search',
          prefixIcon: Icon(Icons.search, color: Colors.black),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
