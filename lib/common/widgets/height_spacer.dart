import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer({super.key, required this.heightSpacer});
  final double heightSpacer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSpacer.h,
    );
  }
}
