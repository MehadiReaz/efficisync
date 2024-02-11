import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/custom_outline_btn.dart';
import 'package:efficisync/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlineButton(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            height: AppConst.kHeight * 0.06,
            width: AppConst.kWidth * 0.9,
            color: AppConst.kLight,
            text: 'Login with a Phone Number',
          ),
        ],
      ),
    );
  }
}
