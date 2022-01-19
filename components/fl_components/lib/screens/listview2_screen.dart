import 'package:flutter/material.dart';

var options = const [
  'Megaman',
  'Mario Bross',
  'Metal Gear',
  'Final fantasy',
  'Metal Slug'
];

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
