import 'package:flutter/material.dart';
import 'package:flutter_app/login/ui/components/positioneds.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          topLeftPositionedIcon(size, 0.3),
          bottomLeftPositionedIcon(size),
          child,
        ],
      ),
    );
  }
}
