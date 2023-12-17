



import 'package:flutter/material.dart';
import 'package:slash_task/core/theming/text_style.dart';
import 'package:slash_task/features/home/ui/widgets/product_Name_and_price_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_colors_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_images_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_material_widget.dart';
import 'package:slash_task/features/home/ui/widgets/product_size_widget.dart';

import 'description_widget.dart';

class BodyOfProductDetailsScreen extends StatelessWidget {
  const BodyOfProductDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImagesWidget(),
          ProductNameAndPriceWidget(),
          ProductColorsWidget(),
          ProductSizeWidget(),
          ProductMaterialWidget(),
          DescriptionWidget(),
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
