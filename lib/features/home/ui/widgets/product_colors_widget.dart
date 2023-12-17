import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/logic/slash_cubit.dart';


class ProductColorsWidget extends StatelessWidget {
  const ProductColorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SlashCubit, SlashState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container();
        }
    );
  }
}