import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/logic/slash_cubit.dart';

import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/select_item_widget.dart';


class ProductMaterialWidget extends StatelessWidget {
  const ProductMaterialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlashCubit, SlashState>(
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
                  itemCount: SlashCubit.get(context).material.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          SlashCubit.get(context).changeMaterial(index);
                        },
                        child: SelectItemWidget(
                          selectedIndex: SlashCubit.get(context).selectedMaterialIndex,
                          index: index, title: SlashCubit.get(context).material[index], width: 80,
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


