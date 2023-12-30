import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/login_widget.dart';

class LoginPage extends StatefulWidget {
  static String id = "LoginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 450),
                child: Image.asset(
                  'assets/images/Pattern2.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.only(bottom: 420),
                child: Image.asset(
                  'assets/images/splash-2.png',
                ),
              ),
            ),
            Positioned.fill(
              top: 250,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16.0),
                // ignore: prefer_const_constructors
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Tab bar
                    TabBar(
                      indicatorColor: Color(0xFFD61355),
                      labelColor: Color(0xFFD61355),
                      unselectedLabelColor: Color(0xFF3B3B3B),
                      labelStyle: TextStyle(
                          color: Color(0xFFD61355),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                      tabs: [
                        Tab(text: 'Create Account'),
                        Tab(text: 'Login'),
                      ],
                    ),

                    // Content
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Create account content
                          LoginContent(
                            buttonText: 'Sign Up',
                            showForgotPassword: false,
                            googleText: 'Sign up',
                          ),
                          // Login content
                          LoginContent(
                            buttonText: 'Login',
                            showForgotPassword: true,
                            googleText: 'Login',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
