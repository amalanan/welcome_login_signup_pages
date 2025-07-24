import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_pages/screens/login/components/background.dart';
import 'package:welcome_login_signup_pages/screens/sign_up/sign_up_screen.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Login', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
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
            RoundedButton(text: 'LOGIN', press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SignUpScreen();
              }));
        
            },),
          ],
        ),
      ),
    );
  }
}
