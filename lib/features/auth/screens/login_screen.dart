import 'package:country_picker/country_picker.dart';
import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:efficisync/common/widgets/custom_outline_btn.dart';
import 'package:efficisync/common/widgets/custom_textfield.dart';
import 'package:efficisync/common/widgets/height_spacer.dart';
import 'package:efficisync/common/widgets/reuseable_text.dart';
import 'package:efficisync/features/auth/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController phoneNumberController = TextEditingController();

  Country country = Country(
    phoneCode: "+88",
    geographic: true,
    name: "Bangladesh",
    example: "Bangladesh",
    displayName: "United States",
    displayNameNoCountryCode: "BD",
    e164Key: "",
    level: 1,
    countryCode: 'BD',
    e164Sc: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReuseableText(
              text: 'Please Enter your phone number',
              style: appStyle(17, AppConst.kLight, FontWeight.w500),
            ),
            const HeightSpacer(heightSpacer: 20),
            CustomTextField(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        countryListTheme: CountryListThemeData(
                          backgroundColor: AppConst.kDark,
                          bottomSheetHeight: AppConst.kHeight * 0.6,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              AppConst.kRadious,
                            ),
                            topRight: Radius.circular(
                              AppConst.kRadious,
                            ),
                          ),
                        ),
                        onSelect: (value) {
                          setState(() {});
                        },
                      );
                    },
                    child: ReuseableText(
                        text: "${country.flagEmoji} ${country.phoneCode}",
                        style: appStyle(18, AppConst.kDark, FontWeight.bold)),
                  ),
                ),
                keyboadType: TextInputType.number,
                hintText: 'Enter your phone number',
                hintTextStyle: appStyle(
                  16,
                  AppConst.kDark,
                  FontWeight.w600,
                ),
                controller: phoneNumberController),
            const HeightSpacer(heightSpacer: 20),
            CustomOutlineButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OTPScreen()));
                },
                height: AppConst.kHeight * 0.06,
                width: AppConst.kWidth * 0.9,
                color2: AppConst.kLight,
                color: AppConst.kDark,
                text: 'Send Code'),
            const HeightSpacer(heightSpacer: 20),
          ],
        ),
      )),
    );
  }
}
