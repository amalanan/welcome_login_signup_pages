import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  });

  final String? text;
  final Function? press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            foregroundColor: textColor,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          ),
          onPressed: press as VoidCallback,
          child: Text(text!),
        ),
      ),
    );
  }
}
