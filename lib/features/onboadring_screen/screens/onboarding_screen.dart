import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:efficisync/common/widgets/width_spacer.dart';
import 'package:efficisync/features/onboadring_screen/widgets/page_one.dart';
import 'package:efficisync/features/onboadring_screen/widgets/page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            PageOne(),
            PageTwo(),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease);
                      },
                      child: const Icon(
                        Ionicons.chevron_forward_circle,
                        size: 30,
                        color: AppConst.kLight,
                      ),
                    ),
                    const WidthSpacer(widthSpacer: 5),
                    ReuseableText(
                      text: 'Skip',
                      style: appStyle(
                        16,
                        AppConst.kLight,
                        FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 2,
                  effect: const WormEffect(
                    dotHeight: 12,
                    dotColor: AppConst.kBlueLight,
                    spacing: 10,
                    activeDotColor: AppConst.kLight,
                    dotWidth: 16,
                  ),
                  onDotClicked: (index) => pageController.jumpToPage(index),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
