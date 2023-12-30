import 'package:flutter/material.dart';
import 'package:food_delivery/config/k_colors.dart';

class SpecialBanner extends StatelessWidget {
  const SpecialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          height: 160,
          decoration: const BoxDecoration(
              gradient: spacialBannerColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
            bottom: 0,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Special Offer\nfor March',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const Text('We are here with the best\ndeserts in town.',
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.normal)),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 15,
                    ),
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Color(0xffFF0000),
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                ),
                child: Image.asset('assets/images/delicious-burgers.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
