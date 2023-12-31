



import 'package:flutter/material.dart';
import 'package:slash_task/core/theming/text_style.dart';
import 'package:slash_task/features/home/ui/widgets/product_Name_and_price_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_colors_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_images_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_material_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_size_widget.dart';

import '../../models/product.dart';
import 'description_widget.dart';

class BodyOfProductDetailsScreen extends StatelessWidget {
  const BodyOfProductDetailsScreen({
    super.key, required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImagesWidget(productModel: productModel,),
          ProductNameAndPriceWidget(productModel: productModel,),
          ProductColorsWidget(),
          ProductSizeWidget(),
          ProductMaterialWidget(),
          DescriptionWidget(productModel: productModel,),
          AddToCurdWidget(),
        ],
      ),
    );
  }
}

class AddToCurdWidget extends StatelessWidget {
  const AddToCurdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
      child: Center(child: Text('Add To Card' ,style:  TextStyles.font17WhiteBold,)),
    );
  }
}
