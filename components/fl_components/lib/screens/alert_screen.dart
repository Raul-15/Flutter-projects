import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child:
                  const Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
            ),
            onPressed: () {}),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            // Navigator.pop(context); SIGNIFICA QUE SE CIERRA EN LA ULTIMA PANTALLA QUE SE ESTUVO
            Navigator.pop(context);
          }),
    );
  }
}
