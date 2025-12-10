import 'dart:io';
import 'package:bit_canny_assignment/core/provider/animationProvider.dart';
import 'package:bit_canny_assignment/core/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends ConsumerWidget {
  final bool? isLeadingIcon;
  final String? assetImage;
  final String? title;
  final String? subtitle;
  final bool? trailingIconIsSwitch;

  Cards({
    required this.isLeadingIcon,
    this.assetImage,
    required this.title,
    required this.subtitle,
    required this.trailingIconIsSwitch,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final switchValue = ref.watch(switchProvider);

    // TODO: implement build
    return Container(
      height: height * 0.08,
      width: double.infinity,
      padding: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(width * 0.06),
        border: BoxBorder.all(
          color: AppColors.cardBorderColor,
          width: width * 0.005,
        ),
      ),
      child: Row(
        children: [
          isLeadingIcon == true
              ? Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Container(
                    height: double.infinity,
                    padding: EdgeInsets.all(height * 0.008),
                    child: Image.asset('assets/images/timer.png'),
                  ),
                )
              : SizedBox.shrink(),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsetsGeometry.only(
                left: isLeadingIcon == true ? 0 : width * 0.02,
              ),
              child: SizedBox(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '',
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      subtitle ?? '',
                      style: TextStyle(
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: double.infinity,
              child: trailingIconIsSwitch == true
                  ? Platform.isIOS
                        ? CupertinoSwitch(
                            value: switchValue,
                            onChanged: (value) =>
                                ref.read(switchProvider.notifier).state = value,
                          )
                        : Switch(
                            value: switchValue,
                            onChanged: (value) =>
                                ref.read(switchProvider.notifier).state = value,
                          )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.arrow_forward_ios)],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
