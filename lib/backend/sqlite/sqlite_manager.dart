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
      'sqlitelocaldb',
      'sqlite_lical.db',
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

  Future<List<GetAllOSsRow>> getAllOSs() => performGetAllOSs(
        _database,
      );

  Future<List<GetEtapaOSRow>> getEtapaOS() => performGetEtapaOS(
        _database,
      );

  Future<List<GetAllOSsCopyRow>> getAllOSsCopy({
    String? id,
  }) =>
      performGetAllOSsCopy(
        _database,
        id: id,
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

  Future updateAll({
    String? titulo,
    String? endereco,
  }) =>
      performUpdateAll(
        _database,
        titulo: titulo,
        endereco: endereco,
      );

  Future insertupdateetapaos({
    int? id,
    String? titulo,
  }) =>
      performInsertupdateetapaos(
        _database,
        id: id,
        titulo: titulo,
      );

  Future updateOS({
    String? osconteudo,
    int? supabaseid,
    String? osstatustxt,
    String? osprioridade,
    String? osmotivodescricao,
    String? osobservacao,
    String? enderecobairro,
    String? enderecologradouro,
    String? clienteid,
  }) =>
      performUpdateOS(
        _database,
        osconteudo: osconteudo,
        supabaseid: supabaseid,
        osstatustxt: osstatustxt,
        osprioridade: osprioridade,
        osmotivodescricao: osmotivodescricao,
        osobservacao: osobservacao,
        enderecobairro: enderecobairro,
        enderecologradouro: enderecologradouro,
        clienteid: clienteid,
      );

  Future testeloop() => performTesteloop(
        _database,
      );

  Future limpabancoOS() => performLimpabancoOS(
        _database,
      );

  /// END UPDATE QUERY CALLS
}
