import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'slash_state.dart';

class SlashCubit extends Cubit<SlashState> {
  SlashCubit() : super(SlashInitial());
   late PageController pageController;
  final int currentPage = 0;
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

  void selectMaterial(int index){
   selectedMaterialIndex = index;
   emit(SelectMaterialState());
  }



  void changeImage(int index){
    selectedImageIndex = index;
    emit(ChangeImageState());
  }


  void initState() {
    pageController =
        PageController(initialPage: currentPage, viewportFraction: 0.8);
  }

}
