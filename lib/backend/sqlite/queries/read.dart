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

/// BEGIN GETALLOSS
Future<List<GetAllOSsRow>> performGetAllOSs(
  Database database,
) {
  const query = '''
SELECT *
FROM ordem_servico;
''';
  return _readQuery(database, query, (d) => GetAllOSsRow(d));
}

class GetAllOSsRow extends SqliteRow {
  GetAllOSsRow(super.data);

  int get id => data['id'] as int;
  int? get supabaseId => data['supabase_id'] as int?;
  int? get sgpId => data['sgp_id'] as int?;
  DateTime? get dtAdicao => data['dt_adicao'] as DateTime?;
  DateTime? get dtEdicao => data['dt_edicao'] as DateTime?;
  int? get ativo => data['ativo'] as int?;
  String? get osStatusTxt => data['os_status_txt'] as String?;
  String? get osPrioridade => data['os_prioridade'] as String?;
  String? get osMotivoDescricao => data['os_motivo_descricao'] as String?;
  String? get osObservacao => data['os_observacao'] as String?;
  String? get osConteudo => data['os_conteudo'] as String?;
  String? get enderecoBairro => data['endereco_bairro'] as String?;
  String? get enderecoLogradouro => data['endereco_logradouro'] as String?;
  int? get clienteId => data['cliente_id'] as int?;
  DateTime? get dataAgendamento => data['data_agendamento'] as DateTime?;
  int? get tipoOsId => data['tipo_os_id'] as int?;
  int? get supervisorId => data['supervisor_id'] as int?;
  int? get tecnicoRespId => data['tecnico_resp_id'] as int?;
  int? get tecnicoAuxId => data['tecnico_aux_id'] as int?;
}

/// END GETALLOSS

/// BEGIN GET ETAPAOS
Future<List<GetEtapaOSRow>> performGetEtapaOS(
  Database database,
) {
  const query = '''
SELECT * FROM etapa_os;
''';
  return _readQuery(database, query, (d) => GetEtapaOSRow(d));
}

class GetEtapaOSRow extends SqliteRow {
  GetEtapaOSRow(super.data);

  int get id => data['id'] as int;
  String get titulo => data['titulo'] as String;
}

/// END GET ETAPAOS

/// BEGIN GETALLOSSCOPY
Future<List<GetAllOSsCopyRow>> performGetAllOSsCopy(
  Database database, {
  String? id,
}) {
  final query = '''
SELECT * FROM ordem_servico WHERE supabase_id=$id;
''';
  return _readQuery(database, query, (d) => GetAllOSsCopyRow(d));
}

class GetAllOSsCopyRow extends SqliteRow {
  GetAllOSsCopyRow(super.data);

  int get id => data['id'] as int;
  int? get supabaseId => data['supabase_id'] as int?;
}

/// END GETALLOSSCOPY

/// BEGIN GETUSUARIO
Future<List<GetUsuarioRow>> performGetUsuario(
  Database database, {
  int? id,
}) {
  final query = '''
Select * from usuario where id=$id;
''';
  return _readQuery(database, query, (d) => GetUsuarioRow(d));
}

class GetUsuarioRow extends SqliteRow {
  GetUsuarioRow(super.data);

  int get id => data['id'] as int;
  int? get sgpId => data['sgp_id'] as int?;
  bool? get ativo => data['ativo'] as bool?;
  String? get nome => data['nome'] as String?;
  String? get funcao => data['funcao'] as String?;
  String? get urlFoto => data['url_foto'] as String?;
  int? get userId => data['user_id'] as int?;
}

/// END GETUSUARIO
