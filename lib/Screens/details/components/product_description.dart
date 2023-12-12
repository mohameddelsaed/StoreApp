import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key, required this.product, required this.pressOneMore,

  });
  final Product product;
  final GestureTapCallback pressOneMore;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: product.isFavourite? const Color(0xffFFe6e6)
                  :const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20) ,
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset("assets/icons/Heart Icon_2.svg"
              // ignore: deprecated_member_use
              ,color:product.isFavourite? const Color(0xFFFF4848):const Color(0xFFD8DEE4),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            left:getProportionateScreenWidth(20) ,
            right:getProportionateScreenWidth(64) ,
          ),
          child: Text(
            product.description,
            maxLines: 3 ,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10,horizontal: getProportionateScreenWidth(20)),
          child: GestureDetector(
            onTap: pressOneMore,
            child: const Row(
              children: [
                Text("See more details",
                  style: TextStyle(
                    color: KPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 12,color: KPrimaryColor,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}