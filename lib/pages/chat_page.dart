import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';

class ChatPage extends StatelessWidget {
  static String id = "ChatPage";
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
    );
  }
}
