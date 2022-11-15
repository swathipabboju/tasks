import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseScreen {
  Future<Database> settingDatabase() async {
    var fileDirirectory = await getApplicationDocumentsDirectory();
    //setting path
    var fullPath = join(fileDirirectory.path, 'cricketers_db.db');

    //opening database
    var openedDatabase = await openDatabase(fullPath,
        version: 1, onCreate: _createDatabaseTable);

    return openedDatabase;
  }

  Future<void> _createDatabaseTable(Database database, int version) async {
    String sqlQuery =
        "CREATE TABLE cricketerTable(id INTEGER,name TEXT,dob TEXT,gender TEXT,country TEXT)";
    await database.execute(sqlQuery);
  }
}
