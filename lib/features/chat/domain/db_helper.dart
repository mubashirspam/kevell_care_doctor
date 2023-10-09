import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  late Database _database;

  Future<void> open() async {
    // Open the database (or create it if it doesn't exist)
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'my_database.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        // Create a table to store your messages
        db.execute('''
          CREATE TABLE messages (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            from_id INTEGER,
            msg TEXT,
            time TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertMessage(int fromId, String msg, String time) async {
    await _database.insert(
      'messages',
      {
        'from_id': fromId,
        'msg': msg,
        'time': time,
      },
    );
  }

  Future<List<Map<String, dynamic>>> getMessagesByFromId(int fromId) async {
    final List<Map<String, dynamic>> maps = await _database.query(
      'messages',
      where: 'from_id = ?',
      whereArgs: [fromId],
    );
    return maps;
  }
}
