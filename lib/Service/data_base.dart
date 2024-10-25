import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper helper = DatabaseHelper._();

  DatabaseHelper._();

  Database? db;

  Future<Database> get database async => db ?? await initData();

  Future<Database> initData() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'expanse.db');

    db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        String sql = '''CREATE TABLE expanse(
       id INTEGER PRIMARY KEY,
       Title TEXT,
       Amount TEXT,
       Date TEXT,
       Food TEXT,
       Transport TEXT
       );''';
        await db.execute(sql);
      },
    );
    return db!;
  }

  Future<void> insertData(String title, amount, date, food, transport) async {
    Database? db = await database;
    String sql =
        '''INSERT INTO expanse(Title,Amount,Date,Food,Transport) VALUES(?,?,?,?,?);''';
    List args = [title, amount, date, food, transport];

    await db.rawInsert(sql, args);
  }

  Future<void> readData() async {
    Database? db = await database;
    String sql = '''SELECT * FROM expanse''';
    await db.rawQuery(sql);
  }

  Future<void> updateData(
      String title, amount, date, food, transport, int id) async {
    Database? db = await database;
    String sql =
        '''UPDATE expanse SET Title = ?,Amount = ?,Date = ?,Food = ?,Transport = ? WHERE id =?''';
    List args = [title, amount, date, food, transport, id];
    db.rawUpdate(sql, args);
  }

  Future<void> deleteData(int id) async {
    Database? db = await database;
    String sql = '''DELETE FROM expanse WHERE id = ?''';
    List args = [id];
    await db.rawDelete(sql, args);
  }
}
