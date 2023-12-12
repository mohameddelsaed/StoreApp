import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/home/home_screen.dart';
import '../Screens/profile/profile_screen.dart';
import '../constants.dart';
import '../enum.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key, required this.selectMenu,
  });
  final MenuState selectMenu;
  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,-15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: ()=>Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                // ignore: deprecated_member_use
                color: MenuState.home == selectMenu
                    ?KPrimaryColor
                    :inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                // ignore: deprecated_member_use
                color: MenuState.favourite == selectMenu
                    ?KPrimaryColor
                    :inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                // ignore: deprecated_member_use
                color: MenuState.message == selectMenu
                    ?KPrimaryColor
                    :inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: ()=>Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                // ignore: deprecated_member_use
                color: MenuState.profile == selectMenu
                    ?KPrimaryColor
                    :inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}