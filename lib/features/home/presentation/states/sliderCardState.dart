import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bit_canny_assignment/features/home/domain/model/sliderCardData.dart';

part 'sliderCardState.freezed.dart';

@freezed
abstract class SliderCardState with _$SliderCardState {
  factory SliderCardState({List<SliderCardData>? sliderCardData}) = _SliderCardState;

  factory SliderCardState.initial() => SliderCardState(sliderCardData: []);
}