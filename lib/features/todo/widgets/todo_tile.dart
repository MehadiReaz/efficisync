import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/height_spacer.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:efficisync/common/widgets/width_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TodoTile extends StatelessWidget {
  const TodoTile(
      {super.key,
      this.color,
      this.title,
      this.description,
      this.start,
      this.end,
      this.editWidget,
      this.delete,
      this.switcher});
  final Color? color;
  final String? title;
  final String? description;
  final String? start;
  final String? end;
  final Widget? editWidget;
  final void Function()? delete;
  final Widget? switcher;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: AppConst.kWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(AppConst.kRadious),
              ),
              color: AppConst.kGreyLight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 80.h,
                      width: 5.h,
                      decoration: BoxDecoration(
                        color: color ?? AppConst.kRed,
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppConst.kRadious),
                        ),
                      ),
                    ),
                    const WidthSpacer(widthSpacer: 15),
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: SizedBox(
                        width: AppConst.kWidth * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReuseableText(
                                text: title ?? 'Title of Todo',
                                style: appStyle(
                                    18, AppConst.kLight, FontWeight.bold)),
                            HeightSpacer(heightSpacer: 3.h),
                            ReuseableText(
                                text: description ?? 'Description of Todo',
                                style: appStyle(
                                    12, AppConst.kLight, FontWeight.normal)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: AppConst.kWidth * 0.3,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    color: AppConst.kDark,
                                    border: Border.all(
                                        width: 0.3, color: AppConst.kGreen),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        AppConst.kRadious,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: ReuseableText(
                                      text: '$start | $end',
                                      style: appStyle(12, AppConst.kLight,
                                          FontWeight.normal),
                                    ),
                                  ),
                                ),
                                const WidthSpacer(widthSpacer: 20),
                                Row(
                                  children: [
                                    SizedBox(
                                      child: editWidget,
                                    ),
                                    const WidthSpacer(widthSpacer: 20),
                                    InkWell(
                                      onTap: delete,
                                      child: const Icon(
                                          MaterialCommunityIcons.delete_circle),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 0.h),
                  child: switcher,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
