
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_04_app/config/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//listado inmutable (provider) de colores

final colorListProvider = Provider((ref) => colorThemes);

final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  //State será una nueva instancia de AppTheme
  ThemeNotifier():super( AppTheme()  );

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColor(int indexColor) {
    state = state.copyWith(selectedColor: indexColor);
  }

}