import 'package:flutter/material.dart';

import '../constants.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    super.key, this.login = true, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login?  "Don't Have an Account? " : "Already Have an Account? ",
            style: TextStyle(
                color: kPrimaryColor
            ),
          ),
          GestureDetector(
            onTap: press as VoidCallback,
            child: Text(
                login?  "Sign Up" : "Sign In",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold
                )),
          )
        ],
      ),
    );
  }
}
