part of 'slash_cubit.dart';

@immutable
abstract class SlashState {}

class SlashInitial extends SlashState {}
class SelectMaterialState extends SlashState {}
class SelectSizeState extends SlashState {}
class ChangeImageState extends SlashState {}
class ChangePageViewState extends SlashState {}
class ChangeDescriptionState extends SlashState {}
class ChangeColorState extends SlashState {}
