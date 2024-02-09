import 'package:flutter/material.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer({super.key, required this.widthSpacer});
  final double widthSpacer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSpacer,
    );
  }
}
