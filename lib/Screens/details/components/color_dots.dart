import 'package:flutter/material.dart';

import '../../../compnents/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'body.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.widget,

  });

  final BodyDetails widget;


  @override
  Widget build(BuildContext context) {
    int selectedColor =3;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
                (index) =>ColorDot(
              color: widget.product.colors[index],isSelected: selectedColor ==index,
            ) ,
          ),
          const Spacer(),
          RoundedIconBtn(
              iconData: Icons.remove,
              press: (){}),
          const SizedBox(width: 15,),
          RoundedIconBtn(
              iconData: Icons.add,
              press: (){}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.color,  this.isSelected=false,

  });

  final Color color;
  final bool  isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        //color: widget.product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(color:isSelected?  KPrimaryColor:Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
