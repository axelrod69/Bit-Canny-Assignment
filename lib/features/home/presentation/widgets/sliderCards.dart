import 'package:bit_canny_assignment/core/provider/animationProvider.dart';
import 'package:bit_canny_assignment/core/theme/appColors.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/sliderCardProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliderCards extends ConsumerWidget {
  final int? index;
  final String? imageUrl;
  final String? title;

  SliderCards({
    required this.index,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final sliderCard = ref.watch(sliderCardsProvider);
    final scale = ref.watch(sliderCardsScaleProvider);
    final selectedIndex = ref.watch(sliderCardIndexProvider);
    final isSelected = selectedIndex == index;

    return AnimatedScale(
      scale: isSelected ? 1.05 : 1.0, // <–– PULSE EFFECT
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,

      child: AnimatedScale(
        scale: scale, // existing bounce-in
        duration: const Duration(milliseconds: 500),
        curve: Curves.elasticOut,

        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: height * 0.01,
            horizontal: width * 0.02,
          ),
          margin: EdgeInsets.only(left: width * 0.02, bottom: isSelected ? height * 0.006 : 0.0),
          decoration: BoxDecoration(
            color: isSelected
                ? sliderCard.sliderCardData![index!].color
                : AppColors.sliderCardColor,
            borderRadius: BorderRadius.circular(width * 0.1),
            boxShadow: [
              BoxShadow(
                color: isSelected
                    ? AppColors.sliderCardShadowColor
                    : Colors.white,
                blurRadius: isSelected ? 1 : 0,
                offset: isSelected ? Offset(3, 3) : Offset(0, 0),
                spreadRadius: width * 0.001,
                blurStyle: BlurStyle.solid,
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(imageUrl ?? ''),

              SizedBox(width: width * 0.02),

              Padding(
                padding: EdgeInsets.only(right: width * 0.02),
                child: Text(
                  title ?? '',
                  style: TextStyle(
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
