import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static Database? _db;
  static String userT = 'userT';
  static String columnId = 'email';
  static String columnUserName = 'password';
  DataBaseHelper._privateConstructor();
  static DataBaseHelper instance = DataBaseHelper._privateConstructor();
  Future<Database> get dbase async {
    if (_db != null) {
      return _db!;
    }
    _db = await intDB();
    return _db!;
  }

  static intDB() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'myDB.db');
    var myOwnDB = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE $userT($columnId TEXT,$columnUserName TEXT)",
        );
      },
    );
    return myOwnDB;
  }

  static Future<int> insertData(Map<String, dynamic> row) async {
    Database? db = await instance.dbase;
    return await db.insert(userT, row);
  }

  static Future<List<Map<String, Object?>>> getData() async {
    Database? db = await instance.dbase;
    return await db.query(userT);
  }

  static Future<int> insertUserData(Map<String, dynamic> row) async {
    Database? db = await instance.dbase;
    return await db.update(userT, row);
  }

  static Future<List<Map<String, Object?>>> getUserData() async {
    Database? db = await instance.dbase;
    return await db.query(userT);
  }
}
