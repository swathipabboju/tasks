import 'package:flutter_application_1/cricket_folder/database_screen.dart';
import 'package:sqflite/sqflite.dart';

class AllFunctions {
  //object creation for databaseScreen class
  late DatabaseScreen _databaseScreen;

  //creating instance in constructor of AllFunctions
  AllFunctions() {
    //instance for DatabaseScreen
    _databaseScreen = DatabaseScreen();
  }

  /* 
//creating constructor for AllFunctions Class && creating instance creation for DatabaseScreen class
  AllFunctions(){
     late DatabaseScreen _databaseScreen= DatabaseScreen();

  }
   */

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseScreen.settingDatabase();
      return _database;
    }
  }

  //insert cricketer details
  insertDetails(table, details) async {
    var connection = await database;
    return await connection?.insert(table, details);
  }

  /* //read all cricketer details
  readDetails(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

//read single cricketer details by id
  readDetailsByName(table, cricketerName) async {
    var connection = await database;
    return await connection
        ?.query(table, where: 'name=?', whereArgs: [cricketerName]);
  }

  //update by name
  updateByName(table, cricketerName) async {
    var connection = await database;
    return await connection?.update(table, cricketerName,
        where: 'name=?', whereArgs: cricketerName['virat']);
  }

  //delete
  deleteByName(table, cricketerName) async {
    var connection = await database;
    return await connection?.rawDelete("delete from $table where name=$cricketerName"
        ); */
  
}
