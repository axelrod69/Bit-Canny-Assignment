import 'package:flutter/services.dart';
import 'package:bit_canny_assignment/core/provider/animationProvider.dart';
import 'package:bit_canny_assignment/core/theme/appColors.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/sliderCardProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/provider/textProvider.dart';
import 'package:bit_canny_assignment/features/home/presentation/widgets/cards.dart';
import 'package:bit_canny_assignment/features/home/presentation/widgets/sliderPanel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaxWidthInputFormatter extends TextInputFormatter {
  final TextStyle textStyle;
  final double maxWidth;
  final double extraPadding;

  MaxWidthInputFormatter({
    required this.textStyle,
    required this.maxWidth,
    this.extraPadding = 0.0,
  });

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    if (newValue.text == oldValue.text) {
      return newValue;
    }

    final tp = TextPainter(
      text: TextSpan(text: newValue.text, style: textStyle),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    if (tp.width + extraPadding > maxWidth) {
      return oldValue;
    }

    return newValue;
  }
}

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
      final raw = amountState.amount;
      final newText = (raw == null || raw == '0') ? '' : raw;

      if (controller.text != newText) {
        controller.value = TextEditingValue(
          text: newText,
          selection: TextSelection.collapsed(offset: newText.length),
        );
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
          // ref.read(sliderCardIndexProvider.notifier).state = null;
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
                      child: LayoutBuilder(
                        builder: (ctx, constraints) {
                          final inputStyle = TextStyle(
                            fontSize: 70.sp,
                            color: AppColors.secondaryTextColor,
                            fontWeight: FontWeight.w400,
                          );

                          final dollarStyle = TextStyle(
                            fontSize: 70.sp,
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.bold,
                          );

                          final dollarPainter = TextPainter(
                            text: TextSpan(text: '\$', style: dollarStyle),
                            textDirection: TextDirection.ltr,
                          )..layout();
                          final dollarWidth = dollarPainter.width;

                          final currentText =
                              (amountState.amount == null ||
                                  amountState.amount == '0')
                              ? ''
                              : amountState.amount!;

                          final displayText = currentText.isEmpty
                              ? '0'
                              : currentText;
                          final textPainter = TextPainter(
                            text: TextSpan(
                              text: displayText,
                              style: inputStyle,
                            ),
                            textDirection: TextDirection.ltr,
                          )..layout();
                          final textWidth = textPainter.width;
                          final spacing = 8.0;
                          final totalContentWidth =
                              dollarWidth + spacing + textWidth;
                          final availableWidth = constraints.maxWidth;
                          final centerX = availableWidth / 2;
                          final startX = centerX - (totalContentWidth / 2);
                          final minLeft = 0.0;
                          final dollarLeft = (startX < minLeft)
                              ? minLeft
                              : startX;
                          final textFieldLeft =
                              dollarLeft + dollarWidth + spacing;
                          final maxTextFieldWidth =
                              availableWidth - textFieldLeft - 4.0;

                          final formatter = MaxWidthInputFormatter(
                            textStyle: inputStyle,
                            maxWidth: maxTextFieldWidth,
                            extraPadding: 4.0,
                          );

                          return Stack(
                            children: [
                              AnimatedPositioned(
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeOut,
                                left: dollarLeft,
                                top: 0,
                                bottom: 0,
                                child: Center(
                                  child: Text('\$', style: dollarStyle),
                                ),
                              ),
                              AnimatedPositioned(
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeOut,
                                left: textFieldLeft,
                                top: 0,
                                bottom: 0,
                                right: 0,
                                child: TextField(
                                  controller: controller,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    formatter,
                                  ],
                                  onChanged: (value) => ref
                                      .read(amountProvider.notifier)
                                      .setFromInput(value),
                                  style: inputStyle,
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
                            ],
                          );
                        },
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
