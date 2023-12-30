import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/icons/Drawer Icon.png'),
        Row(
          children: [
            Image.asset('assets/icons/Location.png'),
            const Text('Freedom way, Lekki phase'),
          ],
        ),
        CircleAvatar(
          child: GestureDetector(
            onTap: () {},
            child: Image.asset('assets/icons/Profile Girl.png'),
          ),
        ),
      ],
    );
  }
}

class DotsDetection extends StatelessWidget {
  const DotsDetection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/Ellipse3.png'),
          Image.asset('assets/images/Ellipse2.png'),
          Image.asset('assets/images/Ellipse2.png'),
        ],
      ),
    );
  }
}
