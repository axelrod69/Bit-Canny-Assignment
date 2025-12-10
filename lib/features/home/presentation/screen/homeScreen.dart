import 'package:bit_canny_assignment/core/provider/animationProvider.dart';
import 'package:bit_canny_assignment/core/theme/appColors.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/sliderCardProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/textProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/widgets/cards.dart';
import 'package:bit_canny_assignment/features/home/presentation/widgets/sliderPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final isKeyboardVisible = keyboardHeight > 0;

    final amountState = ref.watch(amountProvider);
    final opacity = ref.watch(fadeOpacityProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 1️⃣ Sync text field
      if (controller.text != amountState.amount) {
        controller.text = amountState.amount ?? '0';
      }

      final keyboardNotifier = ref.read(keyboardVisibilityProvider.notifier);
      final cardsScaleNotifier = ref.read(sliderCardsScaleProvider.notifier);
      final fadeNotifier = ref.read(fadeOpacityProvider.notifier);

      final wasVisible = keyboardNotifier.state;

      if (wasVisible != isKeyboardVisible) {
        keyboardNotifier.state = isKeyboardVisible;

        if (isKeyboardVisible) {
          cardsScaleNotifier.state = 0.0;
          Future.delayed(const Duration(milliseconds: 200), () {
            if (ref.read(keyboardVisibilityProvider)) {
              fadeNotifier.state = 1.0;
              Future.delayed(const Duration(milliseconds: 200), () {
                if (ref.read(keyboardVisibilityProvider) &&
                    ref.read(fadeOpacityProvider) == 1.0) {
                  cardsScaleNotifier.state = 1.0;
                }
              });
            }
          });
        } else {
          ref.read(sliderCardIndexProvider.notifier).state = null;
          cardsScaleNotifier.state = 0.0;
          Future.delayed(const Duration(milliseconds: 500), () {
            if (!ref.read(keyboardVisibilityProvider)) {
              fadeNotifier.state = 0.0;
            }
          });
        }
      }
    });

    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'How much would you like to gift?',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    SizedBox(height: height * 0.02),
                    SizedBox(
                      height: height * 0.1,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: SizedBox(
                              height: double.infinity,
                              child: Text(
                                '\$',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 70.sp,
                                  color: AppColors.primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: double.infinity,
                              child: TextField(
                                controller: controller,
                                keyboardType: TextInputType.number,
                                onChanged: (value) => ref
                                    .read(amountProvider.notifier)
                                    .setFromInput(value),
                                style: TextStyle(
                                  fontSize: 70.sp,
                                  color: AppColors.secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                  hintText: '0',
                                  hintStyle: TextStyle(
                                    fontSize: 70.sp,
                                    color: AppColors.secondaryTextColor
                                        .withOpacity(0.4),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    Cards(
                      isLeadingIcon: true,
                      title: 'Legacy City Church',
                      subtitle: 'General Church Fund',
                      trailingIconIsSwitch: false,
                    ),
                    SizedBox(height: height * 0.02),
                    Cards(
                      isLeadingIcon: false,
                      title: 'Enable AutoGiving',
                      subtitle: 'Make the habit of giving effortless',
                      trailingIconIsSwitch: true,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: height * 0.5,
              right: 0,
              child: IgnorePointer(
                ignoring: opacity == 0.0,
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Center(child: SliderPanel()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
