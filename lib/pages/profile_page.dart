import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';

class ProfilePage extends StatefulWidget {
  static String id = "ProfilePage";
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
    );
  }
}