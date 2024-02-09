import 'package:efficisync/common/utils/constants.dart';
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
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Ionicons.chevron_forward_circle,
                        size: 30,
                        color: AppConst.kLight,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child:
                      SmoothPageIndicator(controller: pageController, count: 2),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
