import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading:
                Icon(Icons.phone_android_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                "Non est in proident adipisicing in duis commodo cillum velit ipsum sunt. Non est in proident adipisicing in duis commodo cillum velit ipsum sunt. "),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Cancel'),
                  ),
                  TextButton(onPressed: () {}, child: Text('Ok')),
                ],
              ))
        ],
      ),
    );
  }
}
