import 'package:flutter/material.dart';
import 'package:widgets_04_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_04_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_04_app/presentation/screens/home_screen.dart';

import 'config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:2).theme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen()
      },
    );
  }
}

