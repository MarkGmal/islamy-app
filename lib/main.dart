import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_routs.dart';
import 'package:islamy_app/Common/app_theme.dart';
import 'package:islamy_app/home_screen.dart';

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
      routes: {AppRouts.homeRouteName: (context) => HomeScreen()},
    );
  }
}
