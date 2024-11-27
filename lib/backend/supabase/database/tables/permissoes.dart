import '../database.dart';

class PermissoesTable extends SupabaseTable<PermissoesRow> {
  @override
  String get tableName => 'permissoes';

  @override
  PermissoesRow createRow(Map<String, dynamic> data) => PermissoesRow(data);
}

class PermissoesRow extends SupabaseDataRow {
  PermissoesRow(super.data);

  @override
  SupabaseTable get table => PermissoesTable();

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

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get acao => getField<String>('acao');
  set acao(String? value) => setField<String>('acao', value);
}
