import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/models/model.dart';
import 'package:store_app/size_config.dart';


import 'cart_item_card.dart';
class BodyCart extends StatefulWidget {
  const BodyCart({super.key});

  @override
  State<BodyCart> createState() => _BodyCartState();
}

class _BodyCartState extends State<BodyCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: demoCarts.length,
          itemBuilder: (context,index) => Padding(
            padding:  const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
                key: Key(demoCarts[index].product.id.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
                onDismissed: (direction){
                  setState(() {
                    demoCarts.removeAt(index);
                  });
                },
                child: CartItemCard(cart: demoCarts[index],),),
          ),
      ),
    );
  }
}


