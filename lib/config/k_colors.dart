import 'package:flutter/material.dart';

const LinearGradient myLinearColor = LinearGradient(
  colors: [ Color(0xFFD61355), // #D61355
    Color(0xFFFF0000), // #FF0000
  ],
  stops: [0.0, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const LinearGradient searchColor = LinearGradient(
  colors: [
    Color(0xFFFFDFDF),
    Color(0xFFFFF0F0),
  ],
  stops: [0.0, 1.0],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const LinearGradient spacialBannerColor = LinearGradient(
  colors: [
    Color(0xFFFF0000),
    Color(0xFFFFF0F0),
  ],
  stops: [0.0, 1.0],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const mainColor = Color(0xFFD61355);
const whiteColor = Color(0xffFFF0F0);
const foodTypeBorderColor = Color(0xffFF0000);
