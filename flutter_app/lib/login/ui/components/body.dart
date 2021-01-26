import 'package:flutter/material.dart';
import 'package:flutter_app/login/ui/components/background.dart';
import 'package:flutter_app/login/ui/components/rounded_button_login.dart';
import 'package:flutter_app/login/ui/screens/sign_in_screen.dart';
import 'package:flutter_app/shared/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Programming is boring',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedButtonLogin(
                text: 'LOGIN',
                color: kPrimaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                },
              ),
              RoundedButtonLogin(
                text: 'LOGIN',
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
