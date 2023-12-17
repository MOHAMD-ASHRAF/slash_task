import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/slash_cubit.dart';
import '../../models/prouduct.dart';


class ProductImagesWidget extends StatelessWidget {
  const ProductImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlashCubit, SlashState>(
      builder: (context, state) {
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 1.4,
              child: PageView.builder(
                onPageChanged: (index){
                    SlashCubit.get(context).changeImage(index);
                    },
                  itemCount: imageList.length,
                  physics: const ClampingScrollPhysics(),
                  controller:  SlashCubit.get(context).pageController,
                  itemBuilder: (context, index) {
                    return carouselView(index,context);
                  }),
            ),

            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 60.h,
                maxHeight: 60.h,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      SlashCubit.get(context).changeImage(index);
                       },
                    child: ItemBuilder(
                      selectedIndex: SlashCubit.get(context).selectedImageIndex,
                      image: imageList[index].image, index: index,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12.w,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget carouselView(int index,BuildContext context) {
    return AnimatedBuilder(
        animation: SlashCubit.get(context).pageController,
        builder: (context, child) {
          double value = 0;
          if (SlashCubit.get(context).pageController.position.haveDimensions) {
            value = index.toDouble() - (SlashCubit.get(context).pageController.page ?? 0);
            value = (value * 0.038).clamp(-1, 1);
          }
          return Transform.rotate(
              angle: pi * value, child: carouselCard(imageList[index]));
        });
  }

  Widget carouselCard(Product product) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage(
                  product.image,
                ),
                fit: BoxFit.fill),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                color: Colors.black26,
              )
            ]),
      ),
    );
  }
}

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    super.key,
    required this.image, required this.selectedIndex, required this.index,
  });
  final String image;
  final int selectedIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index ? Colors.green : Colors.transparent,
            width: 2.5,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              width: double.infinity,
            )));
  }
}


