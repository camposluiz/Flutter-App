import 'package:flutter/material.dart';
import 'package:flutter_app/login/ui/components/positioneds.dart';

class SignInBackground extends StatelessWidget {
  final Widget child;

  const SignInBackground({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          topLeftPositionedIcon(size, 0.35),
          bottomRightPositionedIcon(size, 0.4),
          child,
        ],
      ),
    );
  }
}
