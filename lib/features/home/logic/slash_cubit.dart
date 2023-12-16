import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'slash_state.dart';

class SlashCubit extends Cubit<SlashState> {
  SlashCubit() : super(SlashInitial());
}
