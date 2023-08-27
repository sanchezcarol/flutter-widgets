
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_04_app/config/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//listado inmutable (provider) de colores

final colorListProvider = Provider((ref) => colorThemes);

final selectedColorProvider = StateProvider((ref) => 0);