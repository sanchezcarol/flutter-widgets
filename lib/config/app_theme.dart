import 'package:flutter/material.dart';

  const Color _customColor = Color(0x007B20F3);

  const List<Color> _colorThemes = [
    _customColor,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.orange
  ];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor=0})
    :assert(selectedColor>=0 && selectedColor<=_colorThemes.length -1, 
    'Color must be between 0 and ${_colorThemes.length}');

  ThemeData theme() => ThemeData(
      useMaterial3: true, 
      colorSchemeSeed: _colorThemes[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false
      )
    );

}