import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseHelper{
  static DatabaseHelper _databaseHelper;
  DatabaseHelper._creatInstance();
  factory DatabaseHelper(){
    _databaseHelper= DatabaseHelper._creatInstance();
    return _databaseHelper;
  }
}