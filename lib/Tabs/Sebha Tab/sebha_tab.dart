import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_images.dart';
import 'package:islamy_app/Common/app_textStyle.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0;
  int counter = 0;
  int zakrcounter = 0;
  List<String> zakrList = ["سبحان الله", "الحمد لله", "الله أكبر"];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ", style: AppTextStyle.bold36White),
        SizedBox(height: height * 0.04),
        Image.asset(AppImages.sebhaFlag),
        Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () {
                onClick();
              },
              child: AnimatedRotation(
                duration: Duration(milliseconds: 400),
                turns: turns,
                child: Image.asset(AppImages.sebhaBody),
              ),
            ),
            Column(
              children: [
                Text(zakrList[zakrcounter], style: AppTextStyle.bold36White),
                Text("$counter", style: AppTextStyle.bold36White),
              ],
            ),
          ],
        ),
      ],
    );
  }

  void onClick() {
    setState(() {
      turns += 1 / 30;
      counter++;
      if (counter > 33) {
        counter = 0;
        zakrcounter++;
        if (zakrcounter >= zakrList.length) {
          zakrcounter = 0;
        }
      }
    });
  }
}
