import '../database.dart';

class PermissoesFuncoesTable extends SupabaseTable<PermissoesFuncoesRow> {
  @override
  String get tableName => 'permissoes_funcoes';

  @override
  PermissoesFuncoesRow createRow(Map<String, dynamic> data) =>
      PermissoesFuncoesRow(data);
}

class PermissoesFuncoesRow extends SupabaseDataRow {
  PermissoesFuncoesRow(super.data);

  @override
  SupabaseTable get table => PermissoesFuncoesTable();

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

  int? get permissao => getField<int>('permissao');
  set permissao(int? value) => setField<int>('permissao', value);

  int? get funcao => getField<int>('funcao');
  set funcao(int? value) => setField<int>('funcao', value);
}
