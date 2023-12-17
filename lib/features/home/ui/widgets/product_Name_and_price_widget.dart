import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/logic/slash_cubit.dart';
import 'package:slash_task/generated/assets.dart';
import '../../../../core/theming/text_style.dart';
import '../../models/product.dart';

class ProductNameAndPriceWidget extends StatelessWidget {
  const ProductNameAndPriceWidget({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlashCubit, SlashState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productModel.name, style: TextStyles.font17WhiteBold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 12.h,),
                  Text('\$${productModel.price}', style: TextStyles.font15WhiteRegular),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(Assets.imagesLogo),
                  ),
                  SizedBox(height: 12.h,),
                  Text(productModel.brandName.toString(), style: TextStyles.font15WhiteRegular),
                ],
              ),

            ],
          ),
        );
      },
    );
  }
}
