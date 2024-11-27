import '../database.dart';

class ClienteTable extends SupabaseTable<ClienteRow> {
  @override
  String get tableName => 'cliente';

  @override
  ClienteRow createRow(Map<String, dynamic> data) => ClienteRow(data);
}

class ClienteRow extends SupabaseDataRow {
  ClienteRow(super.data);

  @override
  SupabaseTable get table => ClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get sgpId => getField<String>('sgp_id');
  set sgpId(String? value) => setField<String>('sgp_id', value);

  DateTime? get dtAdicao => getField<DateTime>('dt_adicao');
  set dtAdicao(DateTime? value) => setField<DateTime>('dt_adicao', value);

  DateTime? get dtEdicao => getField<DateTime>('dt_edicao');
  set dtEdicao(DateTime? value) => setField<DateTime>('dt_edicao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get enderecoBairro => getField<String>('endereco_bairro');
  set enderecoBairro(String? value) =>
      setField<String>('endereco_bairro', value);
}
