
import 'package:flutter/material.dart';
import 'package:slash_task/core/theming/text_style.dart';
import 'package:slash_task/features/home/models/product.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key, required this.productModel,
  });
 final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        color: Colors.grey[700],
        elevation: 4,
        child: ExpansionTile(
          childrenPadding: EdgeInsets.only(top: 0,bottom: 12,left: 20,right: 20),
          title: Text(
            'Description',
            style: TextStyles.font15WhiteRegular,
          ),
          children: [
            Text(
              productModel.description,
              style: TextStyles.font15WhiteRegular,
            ),
          ],
        ),
      ),
    );
  }
}
