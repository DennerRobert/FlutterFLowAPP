import '../database.dart';

class AvaliacaoOsTable extends SupabaseTable<AvaliacaoOsRow> {
  @override
  String get tableName => 'avaliacao_os';

  @override
  AvaliacaoOsRow createRow(Map<String, dynamic> data) => AvaliacaoOsRow(data);
}

class AvaliacaoOsRow extends SupabaseDataRow {
  AvaliacaoOsRow(super.data);

  @override
  SupabaseTable get table => AvaliacaoOsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get dtAdicao => getField<DateTime>('dt_adicao');
  set dtAdicao(DateTime? value) => setField<DateTime>('dt_adicao', value);

  DateTime? get dtEdicao => getField<DateTime>('dt_edicao');
  set dtEdicao(DateTime? value) => setField<DateTime>('dt_edicao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  int? get fotos => getField<int>('fotos');
  set fotos(int? value) => setField<int>('fotos', value);

  int? get documentos => getField<int>('documentos');
  set documentos(int? value) => setField<int>('documentos', value);

  int? get prazo => getField<int>('prazo');
  set prazo(int? value) => setField<int>('prazo', value);

  int? get aprovacao => getField<int>('aprovacao');
  set aprovacao(int? value) => setField<int>('aprovacao', value);

  int? get feedback => getField<int>('feedback');
  set feedback(int? value) => setField<int>('feedback', value);

  DateTime? get dtAvaliacao => getField<DateTime>('dt_avaliacao');
  set dtAvaliacao(DateTime? value) => setField<DateTime>('dt_avaliacao', value);

  int? get ordemServicoId => getField<int>('ordem_servico_id');
  set ordemServicoId(int? value) => setField<int>('ordem_servico_id', value);
}
