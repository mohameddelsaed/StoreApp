import 'package:flutter/material.dart';
import 'package:store_app/Screens/details/details_screen.dart';
import 'package:store_app/Screens/home/components/product_card.dart';
import 'package:store_app/Screens/home/components/section_title.dart';

import '../../../models/product.dart';
import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular product", press: (){}),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                  product:demoProducts[index],
                      press: ()=>Navigator.pushNamed(context, DetailsScreen.routeName,
                          arguments:ProductDetailsArgument(product:demoProducts[index],), ),
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}
