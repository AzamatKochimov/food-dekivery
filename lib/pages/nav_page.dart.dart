import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';
import 'package:food_delivery/pages/cart_page.dart';
import 'package:food_delivery/pages/chat_page.dart';
import 'package:food_delivery/pages/profile_page.dart';
import 'package:food_delivery/pages/user_home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavPage extends StatefulWidget {
  static String id = "NavPage";
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _HomePageState();
}

class _HomePageState extends State<NavPage> {
  int _selectedIndex = 1;
  final List<Widget> _pages = [
    const UserHomePage(),
    const ProfilePage(),
    const CartPage(),
    const ChatPage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: GNav(
        tabBorderRadius: 10,
        tabBackgroundColor: mainColor.withOpacity(0.4),
        color: mainColor.withOpacity(0.4),
        activeColor: mainColor,
        textStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        gap: 8,
        padding: const EdgeInsets.all(10),
        tabMargin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        onTabChange: (index) {
          _navigateBottomBar;
        },
        tabs: const [
          GButton(
            icon: Icons.home_filled,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.message,
            text: 'Message',
          ),
        ],
      ),
        ),
      ],
    );
  }
}
