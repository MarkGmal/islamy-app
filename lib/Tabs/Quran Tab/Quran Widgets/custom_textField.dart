import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_textStyle.dart';

import '../../../Common/app_colors.dart';
import '../../../Common/app_images.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.bold16White,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        disabledBorder: _getBorder(),
        focusedBorder: _getBorder(),
        enabledBorder: _getBorder(),
        prefixIcon: Image.asset(AppImages.searchIcon),
        hintText: "Sura Name",
        hintStyle: AppTextStyle.bold16White,
      ),
    );
  }

  _getBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
