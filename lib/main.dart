import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_04_app/config/router/app_router.dart';
import 'package:widgets_04_app/presentation/providers/theme_provider.dart';
import 'config/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final isDarkMode = ref.watch(isDarkModeProvider); 
    final selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:selectedColor, isDarkMode:isDarkMode).theme(),
    );
  }
}

