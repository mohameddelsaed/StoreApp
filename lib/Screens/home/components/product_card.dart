import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,  this.width = 140,  this.aspectRatio = 1.02,  required this.product, required this.press,
  });
  final double width,aspectRatio;
  final Product product;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: KSecondryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5,),
              Text(product.title,
                style: const TextStyle(color: Colors.black,),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${product.price}",style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color:  KPrimaryColor,
                  ),),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite? KPrimaryColor.withOpacity(0.15): KSecondryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        // ignore: deprecated_member_use
                        color: product.isFavourite
                            ?const Color(0xFFFF4848):
                        const Color(0xFFDBDEE4),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}