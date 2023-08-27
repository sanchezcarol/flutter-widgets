
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/theme_provider.dart';

class ThemeChanger extends ConsumerWidget {
  static const String name = 'theme_screen';
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final bool darkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).state = !darkMode;
            }, 
            icon: darkMode ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined)
          )
        ],
      ),
      body: const _ThemeChangerView()
      
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final colorList = ref.watch(colorListProvider);
    final int colorSelected = ref.watch(selectedColorProvider);
    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {
        final Color color = colorList[index];
        return RadioListTile(
          title: Text('Color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: colorSelected, 
          onChanged: (value) {
            ref.read(selectedColorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}