import '../database.dart';

class EtapaOsTable extends SupabaseTable<EtapaOsRow> {
  @override
  String get tableName => 'etapa_os';

  @override
  EtapaOsRow createRow(Map<String, dynamic> data) => EtapaOsRow(data);
}

class EtapaOsRow extends SupabaseDataRow {
  EtapaOsRow(super.data);

  @override
  SupabaseTable get table => EtapaOsTable();

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

  int? get ordemEtapa => getField<int>('ordem_etapa');
  set ordemEtapa(int? value) => setField<int>('ordem_etapa', value);

  int? get tipoOsId => getField<int>('tipo_os_id');
  set tipoOsId(int? value) => setField<int>('tipo_os_id', value);
}
