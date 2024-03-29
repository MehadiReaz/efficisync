import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/features/todo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 825),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'EfficiSync',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppConst.kDark,
              colorScheme:
                  ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
              useMaterial3: true,
            ),
            themeMode: ThemeMode.dark,
            home: const HomeScreen(),
          );
        });
  }
}
