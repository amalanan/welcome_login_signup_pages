import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_pages/constants.dart';
import 'package:welcome_login_signup_pages/screens/sign_up/components/social_icon.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../sign_up/components/background.dart';
import '../../login/login_screen.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget child;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            SizedBox(height: size.height * 0.01),
            RoundedButton(text: 'Sign Up', press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(iconSrc: 'assets/icons/facebook.svg', press: () {}),
                SocialIcon(iconSrc: 'assets/icons/google-plus.svg', press: () {}),
                SocialIcon(iconSrc: 'assets/icons/twitter.svg', press: () {}),
        
              ],
            ),
          ],
        ),
      ),
    );
  }
}
