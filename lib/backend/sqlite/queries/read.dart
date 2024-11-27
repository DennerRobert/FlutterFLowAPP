import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETOS
Future<List<GetOSRow>> performGetOS(
  Database database,
) {
  const query = '''
SELECT * FROM ordemServico;
''';
  return _readQuery(database, query, (d) => GetOSRow(d));
}

class GetOSRow extends SqliteRow {
  GetOSRow(super.data);

  int get id => data['id'] as int;
  String get titulo => data['titulo'] as String;
  int get protocolo => data['protocolo'] as int;
  String get cliente => data['cliente'] as String;
  String get endereco => data['endereco'] as String;
  int get status => data['status'] as int;
  String get situacao => data['situacao'] as String;
  int get idTecnico => data['id_tecnico'] as int;
}

/// END GETOS
