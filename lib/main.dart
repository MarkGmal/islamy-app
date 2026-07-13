import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_routs.dart';
import 'package:islamy_app/Common/app_theme.dart';
import 'package:islamy_app/Tabs/Quran%20Tab/sura_details.dart';
import 'package:islamy_app/Home%20Screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: AppRouts.homeRouteName,
      routes: {
        AppRouts.homeRouteName: (context) => HomeScreen(),
        AppRouts.suraDetailsrouteName: (context) => SuraDetailsScreen(),
      },
    );
  }
}
