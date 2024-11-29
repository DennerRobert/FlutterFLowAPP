import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETOSIDSELECIONADO
Future<List<GetOSidSelecionadoRow>> performGetOSidSelecionado(
  Database database, {
  int? idSelecionado,
}) {
  final query = '''
SELECT * FROM ordemServico WHERE id = '$idSelecionado';
''';
  return _readQuery(database, query, (d) => GetOSidSelecionadoRow(d));
}

class GetOSidSelecionadoRow extends SqliteRow {
  GetOSidSelecionadoRow(super.data);

  int get id => data['id'] as int;
  String get titulo => data['titulo'] as String;
  int get protocolo => data['protocolo'] as int;
  String get cliente => data['cliente'] as String;
  String get endereco => data['endereco'] as String;
  int get status => data['status'] as int;
  String get situacao => data['situacao'] as String;
  int get idTecnico => data['id_tecnico'] as int;
}

/// END GETOSIDSELECIONADO

/// BEGIN GETIMGIDSELECIONADO
Future<List<GetImgidSelecionadoRow>> performGetImgidSelecionado(
  Database database, {
  int? idSelecionado,
}) {
  final query = '''
SELECT * FROM imagens WHERE fk_id_os = '$idSelecionado';
''';
  return _readQuery(database, query, (d) => GetImgidSelecionadoRow(d));
}

class GetImgidSelecionadoRow extends SqliteRow {
  GetImgidSelecionadoRow(super.data);

  int get id => data['id'] as int;
  String get imagem => data['imagem'] as String;
  int get fkIdOs => data['fk_id_os'] as int;
}

/// END GETIMGIDSELECIONADO

/// BEGIN GETALLOS
Future<List<GetAllOSRow>> performGetAllOS(
  Database database,
) {
  const query = '''
SELECT * FROM ordemServico;
''';
  return _readQuery(database, query, (d) => GetAllOSRow(d));
}

class GetAllOSRow extends SqliteRow {
  GetAllOSRow(super.data);

  int get id => data['id'] as int;
  String get titulo => data['titulo'] as String;
  int get protocolo => data['protocolo'] as int;
  String get cliente => data['cliente'] as String;
  String get endereco => data['endereco'] as String;
  int get status => data['status'] as int;
  String get situacao => data['situacao'] as String;
  int get idTecnico => data['id_tecnico'] as int;
}

/// END GETALLOS
