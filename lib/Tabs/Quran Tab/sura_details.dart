import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/Common/app_colors.dart';
import 'package:islamy_app/Common/app_images.dart';
import 'package:islamy_app/Tabs/Quran%20Tab/Quran%20Widgets/sura_details_contentUI.dart';
import 'package:islamy_app/Tabs/Quran%20Tab/data/suras_list.dart';

import '../../Common/app_textStyle.dart';

class SuraDetailsScreen extends StatefulWidget {
  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraIndex = ModalRoute.of(context)!.settings.arguments as int;
    var height = MediaQuery.of(context).size.height;
    if (verses.isEmpty) {
      loadFile(suraIndex);
    }

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(title: Text(SurasList.englishSurasList[suraIndex])),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.detailsFrame),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Text(
              SurasList.arabicSurasList[suraIndex],
              style: AppTextStyle.bold20Gold,
            ),
            SizedBox(height: height * 0.06),
            verses.isEmpty
                ? Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  )
                : Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => SuraDetailsContentui(
                        text: verses[index],
                        index: index,
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: height * 0.02),
                      itemCount: verses.length,
                    ),
                  ),
            SizedBox(height: height * 0.14),
          ],
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String fileContent = await rootBundle.loadString(
      "assets/files/suras/${index + 1}.txt",
    );
    List<String> suraLines = fileContent.split("\n");
    for (int i = 0; i < suraLines.length; i++) {
      print(suraLines[i]);
    }
    verses = suraLines;
    setState(() {});
  }
}
