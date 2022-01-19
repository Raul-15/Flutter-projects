import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  void increase() {
    counter++;
    setState(() {});
  }

  void remove() {
    counter = 0;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = const TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(title: const Text('CounterScreen'), elevation: 0),
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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        removeFn: remove,
        decreaseFn: decrease,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function removeFn;

  const CustomFloatingActions({
    Key key,
    @required this.increaseFn,
    @required this.decreaseFn,
    @required this.removeFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => increaseFn()),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
            child: const Icon(Icons.delete_forever),
            onPressed: () => removeFn()),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => decreaseFn()),
      ],
    );
  }
}
