import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/height_spacer.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:efficisync/common/widgets/width_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomTitles extends StatelessWidget {
  const BottomTitles(
      {super.key, required this.text, required this.text2, this.clr});
  final String text;
  final String text2;
  final Color? clr;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.kWidth,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer(builder: (context, ref, child) {
              return Container(
                height: 80,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConst.kRadious),
                  ),

                  /// TODO: Add dynamic color
                  color: AppConst.kGreen,
                ),
              );
            }),
            const WidthSpacer(widthSpacer: 15),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseableText(
                    text: text,
                    style: appStyle(
                      24,
                      AppConst.kLight,
                      FontWeight.bold,
                    ),
                  ),
                  HeightSpacer(heightSpacer: 10.h),
                  ReuseableText(
                    text: text2,
                    style: appStyle(
                      12,
                      AppConst.kLight,
                      FontWeight.normal,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
