import 'package:efficisync/common/utils/constants.dart';
import 'package:efficisync/common/widgets/appstyle.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.keyboadType,
      required this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.hintTextStyle,
      required this.controller,
      this.onChanged});
  final TextInputType? keyboadType;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintTextStyle;
  final TextEditingController controller;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth * 0.9,
      height: AppConst.kHeight * 0.07,
      decoration: BoxDecoration(
        color: AppConst.kLight,
        borderRadius: BorderRadius.all(Radius.circular(AppConst.kRadious)),
      ),
      child: TextFormField(
        keyboardType: keyboadType,
        controller: controller,
        cursorHeight: 25,
        onChanged: onChanged,
        style: appStyle(18, AppConst.kDark, FontWeight.w700),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          suffixIconColor: AppConst.kDark,
          hintStyle: hintTextStyle,
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kRed,
              width: 0.5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.5,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kGreyBk,
              width: 0.5,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kDark,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
