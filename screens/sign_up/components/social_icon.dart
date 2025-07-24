import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;

  const SocialIcon({super.key, required this.iconSrc, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: press as VoidCallback,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc, height: 20, width: 20),
      ),
    );
  }
}
