import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/bottom_titles.dart';
import 'package:flutter/material.dart';

class ExpantionWidget extends StatelessWidget {
  const ExpantionWidget(
      {super.key,
      required this.text,
      required this.text2,
      required this.children});
  final String text;
  final String text2;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConst.kLightBk,
        borderRadius: BorderRadius.all(
          Radius.circular(AppConst.kRadious),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: BottomTitles(text: text, text2: text2),
          tilePadding: EdgeInsets.zero,
          children: children,
        ),
      ),
    );
  }
}
