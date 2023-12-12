import 'package:flutter/material.dart';
import 'package:store_app/Screens/details/components/product_description.dart';
import 'package:store_app/Screens/details/components/product_images.dart';
import 'package:store_app/Screens/details/components/top_rounded_container.dart';
import 'package:store_app/compnents/default_button.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/size_config.dart';

import 'color_dots.dart';



class BodyDetails extends StatefulWidget {
  const BodyDetails({super.key, required this.product});
final Product product;

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ProductImages(product: widget.product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: widget.product,
                  pressOneMore: (){},
                ),
                TopRoundedContainer(
                    color: const Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(widget: widget,),
                        TopRoundedContainer(color: Colors.white,
                          child: Padding(
                            padding:  EdgeInsets.only(
                                left: SizeConfig.screenWidth!*0.15,
                              right: SizeConfig.screenWidth!*0.15,
                              bottom: getProportionateScreenWidth(40),
                              top: getProportionateScreenWidth(15),
                            ),
                            child: DefaultButton(
                              text: "Add to cart",
                              press: (){},
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}










