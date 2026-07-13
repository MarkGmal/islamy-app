import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_textStyle.dart';
import 'package:islamy_app/Tabs/Quran%20Tab/Quran%20Widgets/most_recent_view.dart';
import 'package:islamy_app/Tabs/Quran%20Tab/Quran%20Widgets/suras_list_view.dart';
import 'package:islamy_app/Tabs/Quran%20Tab/Quran%20Widgets/custom_textField.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextfield(),
          SizedBox(height: height * 0.02),
          Text("Most Recently ", style: AppTextStyle.bold16White),
          SizedBox(height: height * 0.02),
          MostRecentView(),
          SizedBox(height: height * 0.02),
          Text("Suras List",style: AppTextStyle.bold16White,),
          SizedBox(height: height * 0.02),
          SurasListView()
        ],
      ),
    );
  }
}
