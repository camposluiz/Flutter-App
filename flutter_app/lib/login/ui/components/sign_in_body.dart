import 'package:flutter/material.dart';
import 'package:flutter_app/login/ui/components/SignInBackground.dart';
import 'package:flutter_app/shared/constants.dart';
import 'package:flutter_svg/svg.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignInBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          TextFieldContainer(
            child: TextField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'E-mail / username',
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
