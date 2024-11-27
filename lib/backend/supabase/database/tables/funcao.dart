import '../database.dart';

class FuncaoTable extends SupabaseTable<FuncaoRow> {
  @override
  String get tableName => 'funcao';

  @override
  FuncaoRow createRow(Map<String, dynamic> data) => FuncaoRow(data);
}

class FuncaoRow extends SupabaseDataRow {
  FuncaoRow(super.data);

  @override
  SupabaseTable get table => FuncaoTable();

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

  bool? get admin => getField<bool>('admin');
  set admin(bool? value) => setField<bool>('admin', value);

  bool? get staff => getField<bool>('staff');
  set staff(bool? value) => setField<bool>('staff', value);
}
