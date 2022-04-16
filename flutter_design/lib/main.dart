import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/screens/basic_design.dart';
import 'package:flutter_design/screens/home_screen.dart';
import 'package:flutter_design/screens/scroll_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': (BuildContext context) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }

  // Column _buildColumn() {
  //   return TempHomeScreen();
  // }
}
