import 'package:flutter/material.dart';
import 'package:store_app/Screens/home/components/popular_products.dart';
import 'package:store_app/Screens/home/components/special_offer.dart';
import 'package:store_app/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';


class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(20),),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20),),
            const PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(20),),
          ],
        ),
      ),
    );
  }
}
















