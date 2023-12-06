import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "MIMI",
          style:
          TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: KPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text,textAlign: TextAlign.center,),
        const Spacer(flex: 2,),
        Image.asset(
          image ,
          height: getProportionateScreenHeight(265),
          width:  getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}