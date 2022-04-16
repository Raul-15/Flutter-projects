import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:qrscanner/models/scan_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();

    return _database!;
  }

  Future<Database> initDB() async {
    //Path donde almacenamos la db
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'ScansDB.db');
    print(path);

    // Crear base de datos
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
          CREATE TABLE Scans(
             id INTEGER PRIMARY KEY,
             type TEXT,
              valor TEXT
               )
               ''');
    });
  }
/*
  Future<int> nuevoScanRaw(ScanModel nuevoScan) async {
    final id = nuevoScan.id;
    final type = nuevoScan.type;
    final valor = nuevoScan.valor;

    final db = await database;

    final res = await db.rawInsert('''
          INSERT INTO Scans(id,type,valor)
          VALUES($id,'$type','$valor')
          ''');

    return res;
  }

  Future<int> nuevoScan(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.insert('Scans', nuevoScan.toJson());
    return res;
  }
  */

}
