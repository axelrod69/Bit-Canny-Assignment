import 'package:flutter_riverpod/legacy.dart';

final fadeOpacityProvider = StateProvider<double>((ref) => 0.0);

final keyboardVisibilityProvider = StateProvider<bool>((ref) => false);

final sliderCardsScaleProvider = StateProvider<double>((ref) => 0.0);

final switchProvider = StateProvider<bool>((ref) => false);