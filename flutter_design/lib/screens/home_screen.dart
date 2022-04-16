import 'package:flutter/material.dart';
import 'package:flutter_design/widgets/background.dart';
import 'package:flutter_design/widgets/card_table.dart';
import 'package:flutter_design/widgets/custom_bottom_navigation.dart';
import 'package:flutter_design/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
