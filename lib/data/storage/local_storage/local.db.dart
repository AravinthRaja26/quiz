

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

///
class DataBaseProvider{


///
  static Future<void> initialization() async {

    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    Database database = await openDatabase(path,version: 1,onCreate: (Database db,int version) async {
      await db.execute('CREATE TABLE test');
    });
  }

}