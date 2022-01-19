import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const fontSize30 = const TextStyle(fontSize: 40);
    int counter = 15;

    return Scaffold(
      appBar: AppBar(title: const Text('HomeScreen'), elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks',
              style: fontSize30,
            ),
            Text('$counter', style: TextStyle(fontSize: 40)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print("Hola mundo: $counter");
        },
      ),
    );
  }
}
