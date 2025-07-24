import 'package:flutter/material.dart';
import 'package:welcome_login_signup_pages/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(fontSize: 15, color: kPrimaryColor),
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: Icon(Icons.visibility),
          suffixIconColor: kPrimaryColor,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
