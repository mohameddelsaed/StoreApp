import 'package:flutter/material.dart';
import 'package:store_app/Screens/profile/components/profile_menu.dart';
import 'package:store_app/Screens/profile/components/profile_pic.dart';


class BodyProfile extends StatelessWidget {
  const BodyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(height: 20,),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Settings.svg",
          text: "Settings",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
          press: (){},
        ),
      ],
    );
  }
}



