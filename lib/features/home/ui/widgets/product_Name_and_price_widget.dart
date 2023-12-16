

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/text_style.dart';

class ProductNameAndPriceWidget extends StatelessWidget {
  const ProductNameAndPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Men\'s Printed',style: TextStyles.font17WhiteBold,maxLines: 1,overflow: TextOverflow.ellipsis,),
              SizedBox(height: 12.h,),
              Text('\$120',style: TextStyles.font15WhiteRegular),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/camera.jpg'),
              ),
              SizedBox(height: 12.h,),
              Text('nike',style:TextStyles.font15WhiteRegular),
            ],
          ),

        ],
      ),
    );
  }
}
