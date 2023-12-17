part of 'slash_cubit.dart';

@immutable
abstract class SlashState {}

class SlashInitial extends SlashState {}
class SelectMaterialState extends SlashState {}
class ChangeImageState extends SlashState {}
class ChangePageViewState extends SlashState {}
class ChangePanelState extends SlashState {}
