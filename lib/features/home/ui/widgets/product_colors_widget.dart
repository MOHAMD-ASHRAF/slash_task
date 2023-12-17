import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/logic/slash_cubit.dart';


class ProductColorsWidget extends StatelessWidget {
  const ProductColorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SlashCubit, SlashState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 60.h,
              maxHeight: 60.h,
            ),
            child: Center(
              child: ListView.builder(
                padding: EdgeInsets.all(18),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                   itemCount: SlashCubit.get(context).myColors.length,
                  itemBuilder: (context , index){
                    return GestureDetector(
                      onTap: (){
                        SlashCubit.get(context).changeColor(index);
                        print(index);
                      },
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: SlashCubit.get(context).myColors[index],
                        child: Icon(Icons.check,
                          color: SlashCubit.get(context).selectedColorIndex == index ? Colors.black : Colors.transparent,
                        ),
                      ),
                    );
                  }
              ),
            ),
          );
        }
    );
  }
}
