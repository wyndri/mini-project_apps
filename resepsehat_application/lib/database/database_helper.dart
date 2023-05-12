import 'package:path/path.dart';
import 'package:resepsehat_application/models/penyakit.dart';
import 'package:sqflite/sqflite.dart';


class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final String databasesPath = await getDatabasesPath();
    final String path = join(databasesPath, 'penyakit.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

Future<void> insertPenyakit(Penyakit penyakit) async {
  final db = await DatabaseHelper.instance.database;
  await db.insert(
    'penyakit',
    penyakit.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

  void _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS penyakit (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama TEXT,
        deskripsi TEXT
      )
    ''');

    // Menyisipkan data penyakit
  await db.rawInsert('''
    INSERT INTO penyakit (nama, deskripsi)
    VALUES ('Diabetes', 'Deskripsi penyakit diabetes')
  ''');
  await db.rawInsert('''
    INSERT INTO penyakit (nama, deskripsi)
    VALUES ('Maag', 'Deskripsi penyakit maag')
  ''');
  await db.rawInsert('''
    INSERT INTO penyakit (nama, deskripsi)
    VALUES ('Asam Urat', 'Deskripsi penyakit asam urat')
  ''');
  await db.rawInsert('''
    INSERT INTO penyakit (nama, deskripsi)
    VALUES ('Kolesterol', 'Deskripsi penyakit kolesterol')
  ''');
  
  }
}