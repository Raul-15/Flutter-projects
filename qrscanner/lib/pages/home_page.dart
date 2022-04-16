import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/models/scan_model.dart';

import 'package:qrscanner/pages/direcciones_page.dart';
import 'package:qrscanner/providers/db_provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';

import 'package:qrscanner/widgets/custom_navigatorbar.dart';
import 'package:qrscanner/widgets/scan_button_bar.dart';

import 'mapas_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    // TODO TEMPORTAL LEER BASE DE DATOS
     DBProvider.db.database;
   /* final tempScan =
        new ScanModel(id: 1, type: 'web', valor: 'http://google.com');
    DBProvider.db.nuevoScan(tempScan);

    */
    switch (currentIndex) {
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }
}
