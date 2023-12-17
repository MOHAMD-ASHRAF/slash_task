

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/text_style.dart';

class SelectItemWidget extends StatelessWidget {
  const SelectItemWidget({
    super.key,
    required this.selectedIndex,
    required this.index, required this.title, required this.width,
  });

  final int selectedIndex;
  final int index;
  final double width;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: width.w,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            color: selectedIndex == index ? Colors.white : Colors.green,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(title, style: TextStyles.font15WhiteRegular.copyWith(color: Colors.black)),
      ),
    );
  }
}