import 'package:flutter/material.dart';
import 'package:slash_task/features/home/ui/widgets/description_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_images_widget.dart';
import 'package:slash_task/features/home/ui/widgets/select_material_widget.dart';

import '../widgets/product_Name_and_price_widget.dart';
import '../widgets/product_colors_size_and-material_widget.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text(
            'products details',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImagesWidget(),
              ProductNameAndPriceWidget(),
              ProductColorsSizeAndMaterialWidget(),
              SelectMaterialWidget(),
              DescriptionWidget()
            ],
          ),
        ));
  }
}
