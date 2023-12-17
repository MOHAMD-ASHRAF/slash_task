import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'slash_state.dart';

class SlashCubit extends Cubit<SlashState> {
  SlashCubit() : super(SlashInitial());
  late PageController pageController;
  int currentPage = 0;
  int selectedImageIndex = -1;
  int selectedMaterialIndex = -1;
  List myColors = <Color>[
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.blue
  ];

  void initState() {
    pageController =
        PageController(initialPage: currentPage, viewportFraction: 0.8);
    emit(ChangePageViewState());
  }

  void changeImage(int index) {
    selectedImageIndex = index;
    emit(ChangeImageState());
  }

  void selectMaterial(int index) {
    selectedMaterialIndex = index;
    emit(SelectMaterialState());
  }
}
