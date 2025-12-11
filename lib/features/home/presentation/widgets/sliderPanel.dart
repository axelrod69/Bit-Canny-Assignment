import 'package:bit_canny_assignment/features/home/presentation/provider/sliderCardProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/textProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/widgets/sliderCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliderPanel extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final sliderCards = ref.watch(sliderCardsProvider);

    // TODO: implement build
    return Container(
      height: height * 0.08,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: height * 0.015,
        horizontal: width * 0.05,
      ),
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sliderCards.sliderCardData?.length,
        itemBuilder: (context, index) => Row(
          children: [
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();

                ref.read(sliderCardIndexProvider.notifier).state = index;

                ref
                    .read(amountProvider.notifier)
                    .setFromSlider(
                      sliderCards.sliderCardData?[index].amount ?? '0',
                    );
              },
              child: SliderCards(
                index: index,
                imageUrl: sliderCards.sliderCardData?[index].imageUrl,
                title: sliderCards.sliderCardData?[index].title,
              ),
            ),
            SizedBox(width: width * 0.04),
          ],
        ),
      ),
    );
  }
}
