
import 'package:bit_canny_assignment/features/home/presentation/provider/sliderCardProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/textProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/states/sliderCardState.dart';
import 'package:bit_canny_assignment/features/home/presentation/states/textState.dart';
import 'package:flutter_riverpod/legacy.dart';

final sliderCardProvider = StateNotifierProvider<SliderCardProvider, SliderCardState>((ref) => SliderCardProvider());

final textAmountProvider = StateNotifierProvider<TextProvider, TextState>((ref) => TextProvider());