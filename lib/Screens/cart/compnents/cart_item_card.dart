import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/model.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key, required this.cart,
  });
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cart.product.title,style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
              maxLines: 2,
            ),
            const SizedBox(height: 10,),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(
                  color: KPrimaryColor,
                ),
                children: [
                  TextSpan(
                      text: "x${cart.numOfItem}",
                      style: const TextStyle(
                        color: KTextColor,
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}