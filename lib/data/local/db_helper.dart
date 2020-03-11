import 'dart:convert';
import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
import 'package:image_downloader/image_downloader.dart';

import '../../model/user_info.dart';
import 'permission.dart';

class DbHelper {
  factory DbHelper() => _instance;

  DbHelper.internal();

  static final DbHelper _instance = DbHelper.internal();

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      return _initDb();
    }
  }

  Future<Database> _initDb() async {
    final root = await getDatabasesPath();
    final dbPath = p.join(root, 'pyco.db');
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE User ('
      +'gender TEXT'
      +', name_title TEXT'
      +', name_first TEXT'
      +', name_last TEXT'
      +', location_street TEXT'
      +', location_city TEXT'
      +', location_state TEXT'
      +', location_zip TEXT'
      +', email TEXT'
      +', username TEXT'
      +', password TEXT, salt TEXT'
      +', md5 TEXT'
      +', sha1 TEXT'
      +', sha256 TEXT'
      +', registered TEXT'
      +', dob TEXT'
      +', phone TEXT'
      +', cell TEXT'
      +', SSN TEXT'
      +', pictureOffline TEXT'
      +', picture TEXT)');
  }

  void insertUser(UserInfo user, {Function(bool success) onComplete}) async {
    try{
      await checkStoragePermission();
      var downloadedId = await ImageDownloader.downloadImage(user.picture);
      var filePath = await ImageDownloader.findPath(downloadedId);
      File ifile = File('$filePath');
      String base64 = base64Encode(ifile.readAsBytesSync());

      db.then((database) async {
        await database.transaction((t) async {
          int insert = await t.rawInsert(user.getInsertSqlString(base64));
          print('Insert User to offlineDatabase: $insert');
        });
      });
      onComplete(true);
    }catch(e){
      print(e.toString());
      onComplete(false);
    }
  }

  Future<List<UserInfo>> getUsers() async {
    Database database = await db;
    List<Map> list = await database.rawQuery('SELECT * FROM User');
    return list.map((f) => UserInfo.fromMap(f)).toList();
  }

  void dispose() {
    if (_db != null) {
      _db.close();
    }
  }
}