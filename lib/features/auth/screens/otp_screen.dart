import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/height_spacer.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReuseableText(
              text: 'Enter your OTP Code',
              style: appStyle(18, AppConst.kLight, FontWeight.bold),
            ),
            const HeightSpacer(heightSpacer: 12),
            Pinput(
              length: 6,
              showCursor: true,
              onCompleted: (value) {
                if (value == 6) {}
              },
              onSubmitted: (value) {
                if (value == 6) {}
              },
            )
          ],
        ),
      ),
    );
  }
}
