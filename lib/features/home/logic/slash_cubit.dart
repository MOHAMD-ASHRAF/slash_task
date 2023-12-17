import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'slash_state.dart';

class SlashCubit extends Cubit<SlashState> {
  SlashCubit() : super(SlashInitial());
  static SlashCubit get(context) => BlocProvider.of<SlashCubit>(context);
  late PageController pageController;
  int currentPage = 0;
  int selectedImageIndex = -1;
  int selectedMaterialIndex = -1;
  int selectedSizeIndex = -1;
  int selectedColorIndex = -1;
  List<Color> myColors = [
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.blue
  ];

  List<String> sizes = [
    'm',
    'l',
    'x',
    '2x',
    '3x'
  ];

  List<String> material = [
    'cotton',
    'silk',
    'wool',
    'lace',

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

  void changeMaterial(int index) {
    selectedMaterialIndex = index;
    emit(SelectMaterialState());
  }

  void changeSize(int index) {
    selectedSizeIndex = index;
    emit(SelectSizeState());
  }

  void changeColor(int index) {
    selectedColorIndex = index;
    emit(SelectMaterialState());
  }
}
