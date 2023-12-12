import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.icon, required this.text, required this.press,
  });
  final String icon;
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              // ignore: deprecated_member_use
              color:KPrimaryColor,
            ),
            const SizedBox(width: 20,),
            Expanded(
              child:Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
