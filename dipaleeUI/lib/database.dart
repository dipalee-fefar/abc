import 'package:path/path.dart';
import 'package:sqflite/sqlite.dart';

class MyDataBase {

  Future<Database> initDataBase() async {
    String databasePath = await getDatabasesPath();
    String path = await join(databasePath, 'myDatabase.db');
    Database db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            "CREATE TABLE TBL_USER(UserId INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT)");
      },
      onUpgrade: (db, oldVersion, newVersion) {},
    );
    return db;
  }

  Future<int> insertDataInTBL_USER(name) async {
    Database db = await initDataBase();
    Map<String, dynamic> map = {};
    map['Name'] = name;
    int UserID = await db.insert('TBL_USER', map);
    return UserID;
  }
  Future<List<Map<String, dynamic>>> getUserListFromTBL_USER() async {
    Database db=await initDataBase();
    List<Map<String,dynamic>> userList =  await db.rawQuery("Select * from TBL_User");
    return userList;
  }

  getDatabasesPath() {}

  openDatabase(String path, {required int version, required Null Function(dynamic db, dynamic version) onCreate, required Null Function(dynamic db, dynamic oldVersion, dynamic newVersion) onUpgrade}) {}
}

class Database {
  insert(String s, Map<String, dynamic> map) {}

  rawQuery(String s) {}
}