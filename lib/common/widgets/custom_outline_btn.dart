import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {super.key,
      required this.height,
      required this.width,
      this.color2,
      this.onTap,
      required this.color,
      required this.text});
  final double height;
  final double width;
  final Color? color2;
  final Color color;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color2,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: color)),
        child: Center(
          child: ReuseableText(
            text: text,
            style: appStyle(18, color, FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
