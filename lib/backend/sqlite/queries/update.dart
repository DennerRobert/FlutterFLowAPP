import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTIMGIDSELECIONADO
Future performInsertIMGidSelecionado(
  Database database, {
  String? uploadimagem,
  String? idSelecionado,
}) {
  final query = '''
INSERT INTO imagens(imagem, fk_id_os) VALUES('$uploadimagem', '$idSelecionado');
''';
  return database.rawQuery(query);
}

/// END INSERTIMGIDSELECIONADO

/// BEGIN UPDATE ALL
Future performUpdateAll(
  Database database, {
  String? titulo,
  String? endereco,
}) {
  final query = '''
INSERT INTO ordemServico(titulo, endereco) VALUES(?, ?)
  ON CONFLICT(id) DO UPDATE SET titulo = EXCLUDED.'$titulo', endereco = EXCLUDED.'$endereco';
''';
  return database.rawQuery(query);
}

/// END UPDATE ALL

/// BEGIN INSERTUPDATEETAPAOS
Future performInsertupdateetapaos(
  Database database, {
  int? id,
  String? titulo,
}) {
  final query = '''
INSERT OR REPLACE INTO etapa_os (id, titulo) VALUES ('$id', '$titulo');

''';
  return database.rawQuery(query);
}

/// END INSERTUPDATEETAPAOS

/// BEGIN UPDATEOS
Future performUpdateOS(
  Database database, {
  String? osconteudo,
  int? supabaseid,
  String? osstatustxt,
  String? osprioridade,
  String? osmotivodescricao,
  String? osobservacao,
  String? enderecobairro,
  String? enderecologradouro,
  String? clienteid,
}) {
  final query = '''
INSERT  INTO ordem_servico (
    supabase_id,
    dt_adicao,
    dt_edicao,
    ativo,
    os_status_txt,
    os_prioridade,
    os_motivo_descricao,
    os_observacao,
    os_conteudo,
    endereco_bairro,
    endereco_logradouro,
    cliente_id,
    data_agendamento,
    tipo_os_id,
    supervisor_id,
    tecnico_resp_id,
    tecnico_aux_id
) VALUES (
    '$supabaseid',
    datetime('now'),
    datetime('now'),
    1,
    '$osstatustxt',
    '$osprioridade',
    '$osmotivodescricao',
    '$osobservacao',
    '$osconteudo',
    '$enderecobairro',
    '$enderecologradouro',
    '$clienteid',
    '2024-12-15 08:00:00',
    2,
    3,
    4,
    NULL
);

''';
  return database.rawQuery(query);
}

/// END UPDATEOS

/// BEGIN TESTELOOP
Future performTesteloop(
  Database database,
) {
  const query = '''
INSERT INTO ordemServico (titulo, protocolo, cliente, endereco, status, situacao, id_tecnico) VALUES ( 'titulo loop',  'titulo sqlite off', 1235487, 'titulo sqlite off', 1222, 'titulo sqlite off', 55 );

''';
  return database.rawQuery(query);
}

/// END TESTELOOP

/// BEGIN LIMPABANCOOS
Future performLimpabancoOS(
  Database database,
) {
  const query = '''
DELETE FROM ordem_servico;

''';
  return database.rawQuery(query);
}

/// END LIMPABANCOOS
