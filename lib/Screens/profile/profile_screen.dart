import 'package:flutter/material.dart';
import 'package:store_app/Screens/profile/components/body.dart';
import 'package:store_app/compnents/custom_appbar.dart';
import 'package:store_app/enum.dart';

import '../../compnents/custom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName ="/profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title:"Profile" ,
        press: (){},
        caption: "",
      ),
      bottomNavigationBar: const CustomNavBar(selectMenu: MenuState.profile,),
      body: const BodyProfile(),
    );
  }
}


