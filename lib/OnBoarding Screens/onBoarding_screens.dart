import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_app/Common/app_colors.dart';
import 'package:islamy_app/Common/app_images.dart';
import 'package:islamy_app/Common/app_routs.dart';
import 'package:islamy_app/Common/app_textStyle.dart';
import 'package:islamy_app/OnBoarding%20Screens/onBoarding_model.dart';

class OnboardingScreens extends StatefulWidget {
  OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.03),
      child: Column(
        children: [
          Image.asset(AppImages.headerLogo),
          SizedBox(height: height * 0.16),
          Expanded(
            child: IntroductionScreen(
              pages: OnBoardingModel.onBoardingList.map((page) {
                return PageViewModel(
                  image: Image.asset(page.image),
                  title: page.title,
                  body: page.body,
                  decoration: PageDecoration(
                    titleTextStyle: AppTextStyle.bold24Gold,
                    bodyTextStyle: AppTextStyle.bold20Gold,
                    titlePadding: EdgeInsets.symmetric(vertical: height * 0.05),
                    imagePadding: EdgeInsets.zero,
                  ),
                );
              }).toList(),

              back: Text("Back", style: AppTextStyle.bold16Gold),
              done: Text("Done", style: AppTextStyle.bold16Gold),
              next: Text("Next", style: AppTextStyle.bold16Gold),
              showBackButton: true,
              onDone: () {
                Navigator.pushNamed(context, AppRouts.homeRouteName);
              },
              dotsDecorator: DotsDecorator(
                color: AppColors.blackColor,
                activeColor: AppColors.primaryColor,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(27),
                ),
                activeSize: Size(17, 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
