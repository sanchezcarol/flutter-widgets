import 'package:flutter/material.dart';

  const Color _customColor = Color(0x007B20F3);

  const colorThemes = <Color>[
    Colors.purple,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.orange
  ];

class AppTheme {

  final int selectedColor;
  final bool isDarkMode;
  AppTheme( {this.selectedColor=0, this.isDarkMode = false})
    :assert(selectedColor>=0 && selectedColor<=colorThemes.length -1, 
    'Color must be between 0 and ${colorThemes.length}');

  ThemeData theme() => ThemeData(
      useMaterial3: true, 
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorThemes[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false
      )
    );

}