import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ReuseableText(
          text: 'Todo with riverpod',
          style: appStyle(26, AppConst.kGreen, FontWeight.bold),
        ),
      ),
    );
  }
}
