import 'package:flutter/material.dart';

class RoundedButtonLogin extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  final Color textColor;

  const RoundedButtonLogin({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          color: color,
          onPressed: press,
        ),
      ),
    );
  }
}