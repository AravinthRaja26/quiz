import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

///
class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();

  ///
  factory DatabaseService() => _instance;

  Database? _database;

  DatabaseService._internal();

  ///
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  _initDB() async {
    String path = join(await getDatabasesPath(), 'quiz.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''CREATE TABLE quiz (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            question TEXT,
            options TEXT,
            correctAnswer TEXT,
            userAnswer TEXT,
            marks INTEGER,
            selectedAnswer TEXT,
            isSelectedThis INTEGER
          )''');
      },
    );
  }

  /// Get all quiz questions
  getAllQuiz() async {
    final Database db = await database;
    // Assuming you have stored the data in JSON format in the 'options' column
    return await db.query('quiz');
  }

  /// Save user's answer to a specific question
  Future<void> saveAnswer(int questionId,{ String? answer,int? select}) async {
    final Database db = await database;
    await db.update(
      'quiz',
      <String, dynamic>{
        'userAnswer': answer,
        'selectedAnswer': answer,
        'isSelectedThis': select
      },
      where: 'id = ?', // The WHERE clause to specify the row to update
      whereArgs: <int>[questionId], // The argument for the WHERE clause
    );
  }

  ///
  Future<int> insertQuiz(Map<String, dynamic> quiz) async {
    final Database db = await database;
    return await db.insert('quiz', quiz,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
