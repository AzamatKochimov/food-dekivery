import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';
import 'package:food_delivery/pages/nav_page.dart.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/user_home_page.dart';

class LoginContent extends StatelessWidget {
  final String buttonText;
  final bool showForgotPassword;
  final String googleText;

  const LoginContent({
    Key? key,
    required this.buttonText,
    this.showForgotPassword = true,
    required this.googleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 800,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Full Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: ' Emmanuel Kamcy',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(),
                      fillColor: Color(0xffF6F6F6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Email Address'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: ' ekamcy@gmail.com',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(),
                      fillColor: Color(0xffF6F6F6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Password'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: ' **** **** ****',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color(0xffF6F6F6),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            if (showForgotPassword && buttonText == 'Login')
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    // Implement forgot password action
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        foreground: Paint()
                          ..shader = myLinearColor
                              .createShader(const Rect.fromLTWH(0, 0, 200, 70)),
                      ),
                    ),
                  ),
                ),
              ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: () {
                  // Navigator.popAndPushNamed(context, UserHomePage.id);
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> NavPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: myLinearColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 18,
                  ),
                  child: Text(
                    buttonText,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
                child: Container(
                  width: 256,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/ic_google.png'),
                      const SizedBox(width: 15,),
                      Text(
                        '$googleText with Google',
                        style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
