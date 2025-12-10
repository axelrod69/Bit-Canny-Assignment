import 'package:bit_canny_assignment/features/home/presentation/states/textState.dart';
import 'package:flutter_riverpod/legacy.dart';

class TextProvider extends StateNotifier<TextState> {
  TextProvider() : super(TextState.initial());

  void setFromInput(String amount) {
    state = state.copyWith(amount: amount);
  }

  void setFromSlider(String amount) {
    state = state.copyWith(amount: amount);
  }
}

final amountProvider = StateNotifierProvider<TextProvider, TextState>(
  (ref) => TextProvider(),
);
