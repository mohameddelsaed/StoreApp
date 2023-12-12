import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/compnents/rounded_icon_btn.dart';

import '../constants.dart';
import '../size_config.dart';

// ignore: must_be_immutable
class CustomAppbar extends StatelessWidget implements PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(50);
   CustomAppbar({
    super.key, required this.title, required this.press,  this.caption,
  });
  final String title;
  final Function() press;
   String? caption;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(title,style: const TextStyle(color: KTextColor),),
          Text(caption!,style: Theme.of(context).textTheme.bodySmall,)
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: press,
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}

class CustomAppbar2 extends StatelessWidget implements PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  const CustomAppbar2({
    super.key, required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData:Icons.arrow_back_ios_new,
              press: ()=>Navigator.pop(context),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5,),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}