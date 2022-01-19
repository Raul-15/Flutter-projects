import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
                imageUrl:
                    'http://wallup.net/wp-content/uploads/2016/05/24/374644-path-landscape-trees.jpg',
                name: 'Lindo paisaje'),
            CustomCardType2(
                imageUrl:
                    'http://wallup.net/wp-content/uploads/2016/05/24/374644-path-landscape-trees.jpg'),
            CustomCardType2(
                imageUrl:
                    'http://www.deskcar.com/desktop/fengjing/201498232012/1.jpg'),
            CustomCardType2(
                imageUrl:
                    'http://wallup.net/wp-content/uploads/2016/05/24/374644-path-landscape-trees.jpg')
          ],
        ));
  }
}
