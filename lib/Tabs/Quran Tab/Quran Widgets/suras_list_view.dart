import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/Common/app_routs.dart';

import '../../../Common/app_images.dart';
import '../../../Common/app_textStyle.dart';
import '../data/suras_list.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouts.suraDetailsrouteName,
                arguments: index,
              );
            },
            contentPadding: EdgeInsets.all(5),
            leading: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(AppImages.suraNumFrame),
                Text("${index + 1}", style: AppTextStyle.bold20White),
              ],
            ),
            title: Text(
              SurasList.englishSurasList[index],
              style: AppTextStyle.bold20White,
            ),
            subtitle: Text(
              "${SurasList.versesNumberList[index]} Verses",
              style: AppTextStyle.bold14White,
            ),
            trailing: Text(
              SurasList.arabicSurasList[index],
              style: AppTextStyle.bold20White,
            ),
          );
        },
        itemCount: SurasList.versesNumberList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(indent: width * 0.10, endIndent: width * 0.10);
        },
      ),
    );
  }
}
