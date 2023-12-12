import 'package:flutter/material.dart';
import 'package:store_app/Screens/home/components/body.dart';
import 'package:store_app/compnents/custom_nav_bar.dart';
import 'package:store_app/enum.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 static String routeName ="/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyHome(),
      bottomNavigationBar: CustomNavBar(selectMenu: MenuState.home),
    );
  }
}
