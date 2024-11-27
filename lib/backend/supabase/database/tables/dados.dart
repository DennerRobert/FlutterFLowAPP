import '../database.dart';

class DadosTable extends SupabaseTable<DadosRow> {
  @override
  String get tableName => 'dados';

  @override
  DadosRow createRow(Map<String, dynamic> data) => DadosRow(data);
}

class DadosRow extends SupabaseDataRow {
  DadosRow(super.data);

  @override
  SupabaseTable get table => DadosTable();

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

  String? get valor => getField<String>('valor');
  set valor(String? value) => setField<String>('valor', value);

  int? get ordemServicoId => getField<int>('ordem_servico_id');
  set ordemServicoId(int? value) => setField<int>('ordem_servico_id', value);

  int? get entradaDadosId => getField<int>('entrada_dados_id');
  set entradaDadosId(int? value) => setField<int>('entrada_dados_id', value);
}
