import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'database',
      'bmt4t_db.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetOSidSelecionadoRow>> getOSidSelecionado({
    int? idSelecionado,
  }) =>
      performGetOSidSelecionado(
        _database,
        idSelecionado: idSelecionado,
      );

  Future<List<GetImgidSelecionadoRow>> getImgidSelecionado({
    int? idSelecionado,
  }) =>
      performGetImgidSelecionado(
        _database,
        idSelecionado: idSelecionado,
      );

  Future<List<GetAllOSRow>> getAllOS() => performGetAllOS(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insertIMGidSelecionado({
    String? uploadimagem,
    String? idSelecionado,
  }) =>
      performInsertIMGidSelecionado(
        _database,
        uploadimagem: uploadimagem,
        idSelecionado: idSelecionado,
      );

  /// END UPDATE QUERY CALLS
}
