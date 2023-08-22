
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons screen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () { context.pop(); },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Button Disabled')),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.abc_outlined), 
              label: const Text('Button Icon')
            ),
            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.abc_outlined), 
              label: const Text('Filled Icon')
            ),
            OutlinedButton(onPressed: (){}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.abc_outlined), 
              label: const Text('Outline Icon')
            ),
            TextButton(onPressed: (){}, child: const Text('Text Button')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.abc_outlined), 
              label: const Text('Text Button Icon')
            ),
            const CustomButton(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarm)),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.accessibility_sharp, color: Colors.white), 
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(theme.primary)), 
            )

          ]
        )
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola button', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}