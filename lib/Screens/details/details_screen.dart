import 'package:flutter/material.dart';
import 'package:store_app/models/product.dart';
import '../../compnents/custom_appbar.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument arguments =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppbar2(rating:arguments.product.rating ),
        body: BodyDetails(product: arguments.product,),
    );
  }
}









class ProductDetailsArgument{
  final Product product;

  ProductDetailsArgument({required this.product});
}