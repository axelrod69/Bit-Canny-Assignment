import 'package:bit_canny_assignment/features/home/presentation/screen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ProviderScope(child: BitCannyAssignment()));
}

class BitCannyAssignment extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Bit Canny Assignment',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}