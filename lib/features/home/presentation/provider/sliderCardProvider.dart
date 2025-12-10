import 'package:bit_canny_assignment/features/home/domain/model/sliderCardData.dart';
import 'package:bit_canny_assignment/features/home/presentation/states/sliderCardState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

class SliderCardProvider extends StateNotifier<SliderCardState> {
  SliderCardProvider() : super(SliderCardState.initial()) {
    loadCardData();
  }

  void loadCardData() {
    final List<SliderCardData> sliderCardData = [
      SliderCardData(
        imageUrl: 'assets/images/badge.png',
        title: 'Personalize',
        amount: '200',
        color: Colors.redAccent
      ),
      SliderCardData(
        imageUrl: 'assets/images/heart.png',
        title: 'Last Gift Amount',
        amount: '400',
        color: Colors.amberAccent
      ),
      SliderCardData(
        imageUrl: 'assets/images/shopping-cart.png',
        title: 'Shopping Cart Amount',
        amount: '600',
        color: Colors.lightGreenAccent
      ),
      SliderCardData(
        imageUrl: 'assets/images/trophy.png',
        title: 'Trophy',
        amount: '800',
        color: Colors.purpleAccent
      ),
      SliderCardData(
        imageUrl: 'assets/images/timer.png',
        title: 'Timer',
        amount: '1000',
        color: Colors.deepOrangeAccent
      ),
    ];

    state = state.copyWith(sliderCardData: sliderCardData);
  }
}

final sliderCardsProvider = StateNotifierProvider<SliderCardProvider, SliderCardState>((ref) => SliderCardProvider());

final sliderCardIndexProvider = StateProvider<int?>((ref) => null);
