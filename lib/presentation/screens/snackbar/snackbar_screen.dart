
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void snackBar(BuildContext context) {
    final snackbar = SnackBar(
                  content: const Text('Hola mundo'),
                  action: SnackBarAction(label: 'Ok', onPressed: (){}),
                  duration: const Duration(seconds: 2),
                );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (context) => AlertDialog(
        title: const Text('Información'),
        content: const Text('Lorem impusm'),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=>context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(context: context, children:[const Text('Información sobre las licencias')]);
              }, 
              child: const Text('Ver licencias')
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar diálogo')
            )
          ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon (Icons.remove_red_eye_outlined),
        onPressed: () => snackBar(context)
      ),
    );
  }
}