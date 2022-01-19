import 'package:flutter/material.dart';

// var options = const [
//   'Megaman',
//   'Mario Bross',
//   'Metal Gear',
//   'Final fantasy',
//   'Metal Slug'
// ];

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(children: [
          // ...options
          //     .map(
          //       (game) => ListTile(
          //         title: Text(game),
          //         trailing: const Icon(Icons.arrow_forward_ios_outlined),
          //       ),
          //     )
          //     .toList()

          // ListTile(
          //   title: Text('Hola mundo'),
          // )
        ]));
  }
}
