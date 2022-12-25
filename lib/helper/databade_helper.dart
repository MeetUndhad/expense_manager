import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'my_table';

  static final columnId = '_id';
  static final amount = 'amount';
  static final payee = 'payee';
  static final chequeno = 'chequeno';

  var result;

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  static Future<Database?> get database async {
    final databasePath = await getDatabasesPath();
    final status = await databaseExists(databasePath);
    if (!status) {
      _database = await openDatabase(join(databasePath, _databaseName),
          onCreate: (database, version) {
            return database.execute(
                "CREATE TABLE $table("
                    "$columnId INTEGER PRIMARY KEY AUTOINCREMENT, "
                    "$amount INT, "
                    "$payee INT,"
                    "$chequeno INT)"
            );
          }, version: _databaseVersion
      );
    }
    return _database;
  }


  Future<bool> insert(Map<String, dynamic> row) async {
    final db = await database;
    try {
      await db!.insert(table, row);
    } on Error {
      throw Error();
    }
    return true;
  }

  Future <List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await database;
    result = await db!.query(table);
    return result.toList();
  }

  Future<int> updateStatic(Map<String, dynamic> row, String id) async{
    Database? db = await database;
    return await db!.update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }


  Future<int> delete(int id) async {
    Database? db = await database;
    return await db!.delete(table,
        where: '$columnId = ?', whereArgs: [id]);
  }
}