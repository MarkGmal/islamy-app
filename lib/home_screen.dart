import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/Common/app_colors.dart';
import 'package:islamy_app/Common/app_images.dart';
import 'package:islamy_app/Tabs/hadeth_tab.dart';
import 'package:islamy_app/Tabs/quran_tab.dart';
import 'package:islamy_app/Tabs/radio_tab.dart';
import 'package:islamy_app/Tabs/sebha_tab.dart';
import 'package:islamy_app/Tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;
  List tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(), TimeTab()];
  List imageBG = [
    AppImages.quranBG,
    AppImages.hadethBG,
    AppImages.sebhaBG,
    AppImages.radioBG,
    AppImages.timeBG,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageBG[selectedTab],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTab,
            onTap: (value) {
              selectedTab = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: design(iconName: AppImages.quranIcon, index: 0),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: design(iconName: AppImages.hadethIcon, index: 1),
                label: "Hadeth",
              ),
              BottomNavigationBarItem(
                icon: design(iconName: AppImages.sebhaIcon, index: 2),
                label: "Sebha",
              ),
              BottomNavigationBarItem(
                icon: design(iconName: AppImages.radioIcon, index: 3),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: design(iconName: AppImages.timeIcon, index: 4),
                label: "Time",
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppImages.headerLogo),
              Expanded(child: tabs[selectedTab]),
            ],
          ),
        ),
      ],
    );
  }

  design({required int index, required String iconName}) {
    return selectedTab == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.circular(44),
            ),
            child: SvgPicture.asset(
              iconName,
              color: selectedTab == index ? Colors.white : null,
            ),
          )
        : SvgPicture.asset(iconName);
  }
}
