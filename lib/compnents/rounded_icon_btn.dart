import 'package:flutter/material.dart';

import '../size_config.dart';
class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    super.key, required this.iconData, required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenHeight(40),
      child: ElevatedButton(
        onPressed: press,
        style:ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        child:  Icon(
          iconData,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}