import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/custom_textfield.dart';
import 'package:efficisync/common/widgets/expantion_tile.dart';
import 'package:efficisync/common/widgets/height_spacer.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:efficisync/common/widgets/width_spacer.dart';
import 'package:efficisync/features/todo/widgets/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  late final TabController tabBarController =
      TabController(length: 2, vsync: this);
  final TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableText(
                      text: 'Dashboard',
                      style: appStyle(
                        18,
                        AppConst.kLight,
                        FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 25.w,
                      height: 25.h,
                      decoration: const BoxDecoration(
                        color: AppConst.kLight,
                        borderRadius: BorderRadius.all(
                          Radius.circular(9),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.add,
                          color: AppConst.kDark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(heightSpacer: 20.h),
              CustomTextField(
                hintText: 'Search',
                controller: search,
                hintTextStyle:
                    appStyle(18, AppConst.kGreyLight, FontWeight.w500),
                prefixIcon: Container(
                  padding: EdgeInsets.all(14.h),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      AntDesign.search1,
                      color: AppConst.kGreyLight,
                    ),
                  ),
                ),
                suffixIcon: const Icon(
                  FontAwesome.sliders,
                  color: AppConst.kGreyLight,
                ),
              ),
              HeightSpacer(heightSpacer: 15.h)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              HeightSpacer(heightSpacer: 25.h),
              Row(
                children: [
                  const Icon(
                    FontAwesome.tasks,
                    size: 20,
                    color: AppConst.kLight,
                  ),
                  WidthSpacer(widthSpacer: 10.w),
                  ReuseableText(
                    text: 'Today\'s Tasks',
                    style: appStyle(18, AppConst.kLight, FontWeight.bold),
                  ),
                ],
              ),
              HeightSpacer(heightSpacer: 25.h),
              Container(
                decoration: BoxDecoration(
                  color: AppConst.kLight,
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConst.kRadious),
                  ),
                ),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        color: AppConst.kGreyLight,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppConst.kRadious))),
                    controller: tabBarController,
                    labelPadding: EdgeInsets.zero,
                    isScrollable: false,
                    labelColor: AppConst.kBlueLight,
                    labelStyle:
                        appStyle(24, AppConst.kBlueLight, FontWeight.w700),
                    unselectedLabelColor: AppConst.kLight,
                    tabs: [
                      Tab(
                        child: SizedBox(
                          width: AppConst.kWidth * 0.5,
                          child: Center(
                            child: ReuseableText(
                              text: 'Pending',
                              style:
                                  appStyle(16, AppConst.kDark, FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.only(left: 30.w),
                          width: AppConst.kWidth * 0.5,
                          child: Center(
                            child: ReuseableText(
                              text: 'Completed',
                              style:
                                  appStyle(16, AppConst.kDark, FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              HeightSpacer(heightSpacer: 20.h),
              SizedBox(
                height: AppConst.kHeight * 0.3,
                width: AppConst.kWidth,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConst.kRadious),
                  ),
                  child: TabBarView(controller: tabBarController, children: [
                    Container(
                      height: AppConst.kHeight * 0.3,
                      decoration: const BoxDecoration(
                        color: AppConst.kLight,
                      ),
                      child: ListView(
                        children: [
                          TodoTile(
                            title: 'Hello',
                            start: "03:00",
                            end: "04: 00",
                            switcher: Switch(
                              value: true,
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: AppConst.kHeight * 0.3,
                      decoration: const BoxDecoration(
                        color: AppConst.kLight,
                      ),
                    ),
                  ]),
                ),
              ),
              const HeightSpacer(heightSpacer: 20),
              const ExpantionWidget(
                  text: 'Tomorrow\'s Task',
                  text2: 'Tomorrow\'s Task are shown here',
                  children: []),
              const HeightSpacer(heightSpacer: 20),
              ExpantionWidget(
                  text: DateTime.now()
                      .add(const Duration(days: 2))
                      .toString()
                      .substring(5, 10),
                  text2: 'Day after tomorrow Tasks',
                  children: []),
            ],
          ),
        ),
      ),
    );
  }
}
