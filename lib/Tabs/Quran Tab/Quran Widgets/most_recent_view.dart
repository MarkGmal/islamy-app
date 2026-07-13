import 'package:flutter/material.dart';

import '../../../Common/app_colors.dart';
import '../../../Common/app_images.dart';
import '../../../Common/app_textStyle.dart';

class MostRecentView extends StatelessWidget {
  const MostRecentView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.16,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryColor,
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Al-Anbiya", style: AppTextStyle.bold24Black),
                    Text("الأنبياء", style: AppTextStyle.bold24Black),
                    Text("112 Verses  ", style: AppTextStyle.bold14Black),
                  ],
                ),
                Image.asset(AppImages.mostRecent),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: width * 0.02),
        itemCount: 10,
      ),
    );
  }
}
