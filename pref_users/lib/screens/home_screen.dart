import 'package:flutter/material.dart';
import 'package:pref_users/shared_preferences/preferences.dart';
import 'package:pref_users/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Home'),
          ),
        ),
        drawer: SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkmode: ${Preferences.isDarkmode}'),
            Divider(),
            Text('Genero:  ${Preferences.gender}'),
            Divider(),
            Text('Nombre de usuario:  ${Preferences.name}'),
            Divider(),
          ],
        ));
  }
}
