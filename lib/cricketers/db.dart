import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Db {
  final dbName = "cricketers.db";
  final dbVersion = 1;
  //creating constructor for db class
  Db._dbConstructor();
  static final Db obj = Db._dbConstructor();
  late Database db;
  Future<Database> get database async => db = await _initDatabase();
  Future<Database?> get database1 async {
    if (db == null) {
      db = await _initDatabase();
    }
    return db;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    print("path ${documentsDirectory.path}");
    print("swathi");
  }
}
