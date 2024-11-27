import '../database.dart';

class TipoOsTable extends SupabaseTable<TipoOsRow> {
  @override
  String get tableName => 'tipo_os';

  @override
  TipoOsRow createRow(Map<String, dynamic> data) => TipoOsRow(data);
}

class TipoOsRow extends SupabaseDataRow {
  TipoOsRow(super.data);

  @override
  SupabaseTable get table => TipoOsTable();

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

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);
}
