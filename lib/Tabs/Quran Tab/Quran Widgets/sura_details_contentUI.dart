import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_colors.dart';
import 'package:islamy_app/Common/app_textStyle.dart';

class SuraDetailsContentui extends StatelessWidget {
  SuraDetailsContentui({super.key, required this.text, required this.index});
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.04),
      padding: EdgeInsets.all(height * 0.01),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        "$text [${index + 1}]",
        style: AppTextStyle.bold20Gold,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
