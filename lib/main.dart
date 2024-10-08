import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mealmate/presentation/pages/splash_page.dart';
import 'package:mealmate/presentation/providers/meal_provider.dart';
import 'package:mealmate/core/theme/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MealProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MealMate',
      theme: AppTheme.lightTheme,
      home: SplashPage(),
    );
  }
}
