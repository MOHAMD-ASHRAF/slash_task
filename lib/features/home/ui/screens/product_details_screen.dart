import 'package:flutter/material.dart';
import 'package:slash_task/features/home/models/product.dart';
import '../widgets/body_of_product_details_screen.dart';


class ProductsDetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductsDetailsScreen({super.key, required this.productModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          centerTitle: true,
          title: Text(
              productModel.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:   BodyOfProductDetailsScreen(productModel: productModel,));
  }
}


