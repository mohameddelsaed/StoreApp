import 'package:flutter/material.dart';
import 'package:store_app/Screens/cart/compnents/body.dart';
import 'package:store_app/Screens/home/home_screen.dart';
import 'package:store_app/compnents/custom_appbar.dart';
import 'package:store_app/models/model.dart';


import 'compnents/check_out_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
static String routeName ="/ cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppbar(context),
      body: const BodyCart(),
      bottomNavigationBar: const CheckOurCard(),
    );
  }




  CustomAppbar buildCustomAppbar(BuildContext context) {
    return CustomAppbar(
      title: 'Your Cart',
      press: ()=>Navigator.pushNamed(context, HomeScreen.routeName),
      caption: "${demoCarts.length} items",
    );
  }
}


