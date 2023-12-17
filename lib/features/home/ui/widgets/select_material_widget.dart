import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/logic/slash_cubit.dart';

import '../../../../core/theming/text_style.dart';


class SelectMaterialWidget extends StatelessWidget {
  const SelectMaterialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SlashCubit, SlashState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Material',
                style: TextStyles.font17WhiteBold,
              ),
              SizedBox(
                height: 12.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 45.h, minWidth: 60.w),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          BlocProvider.of<SlashCubit>(context).selectMaterial(index);
                        },
                        child: ItemBuilderWidget(
                          selectedIndex: BlocProvider.of<SlashCubit>(context).selectedMaterialIndex,
                          index: index,
                        ));
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ItemBuilderWidget extends StatelessWidget {
  const ItemBuilderWidget({
    super.key,
    required this.selectedIndex,
    required this.index,
  });

  final int selectedIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            color: selectedIndex == index ? Colors.white : Colors.green,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text('Select', style: TextStyles.font15WhiteRegular),
      ),
    );
  }
}
