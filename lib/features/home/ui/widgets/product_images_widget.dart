import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/prouduct.dart';

class ProductImagesWidget extends StatefulWidget {
  const ProductImagesWidget({super.key});

  @override
  State<ProductImagesWidget> createState() => _ProductImagesWidgetState();
}

class _ProductImagesWidgetState extends State<ProductImagesWidget> {
  late PageController _pageController;
  int _currentPage = 0;
  int selectedIndex = -1;
  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.4,
          child: PageView.builder(
              itemCount: imageList.length,
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              itemBuilder: (context, index) {
                return carouselView(index);
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
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: ItemBuilder(
                  selectedIndex: selectedIndex,
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
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index.toDouble() - (_pageController.page ?? 0);
            value = (value * 0.038).clamp(-1, 1);
            print("value $value index $index");
          }
          return Transform.rotate(
              angle: pi * value, child: carouselCard(imageList[index]));
        });
  }
  Widget carouselCard(Product product) {
    return Expanded(
      child: Padding(
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
      ),
    );
  }
}

class ItemBuilder extends StatefulWidget {
  const ItemBuilder({
    super.key,
    required this.image, required this.selectedIndex, required this.index,
  });
  final String image;
  final int selectedIndex;
  final int index;

  @override
  State<ItemBuilder> createState() => _ItemBuilderState();
}

class _ItemBuilderState extends State<ItemBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.selectedIndex == widget.index ? Colors.green : Colors.transparent,
            width: 2.5,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
              width: double.infinity,
            )));
  }
}


