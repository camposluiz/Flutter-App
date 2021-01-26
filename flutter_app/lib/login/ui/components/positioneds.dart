import 'package:flutter/material.dart';

topLeftPositionedIcon(Size size, double multiplier) {
  return Positioned(
    top: 0,
    left: 0,
    child: Image.asset(
      "assets/images/main_top.png",
      width: size.width * multiplier,
    ),
  );
}

bottomLeftPositionedIcon(Size size) {
  return Positioned(
    bottom: 0,
    left: 0,
    child: Image.asset(
      "assets/images/main_bottom.png",
      width: size.width * 0.2,
    ),
  );
}

bottomRightPositionedIcon(Size size, double multiplier) {
  return Positioned(
    bottom: 0,
    right: 0,
    child: Image.asset(
      "assets/images/login_bottom.png",
      width: size.width * multiplier,
    ),
  );
}
