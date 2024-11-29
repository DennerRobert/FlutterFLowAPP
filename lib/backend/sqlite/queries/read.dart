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
  int? idOrdem,
}) {
  final query = '''
SELECT * FROM ordemServico WHERE id = '$idOrdem';
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
