import '../database.dart';

class EntradaDadosTable extends SupabaseTable<EntradaDadosRow> {
  @override
  String get tableName => 'entrada_dados';

  @override
  EntradaDadosRow createRow(Map<String, dynamic> data) => EntradaDadosRow(data);
}

class EntradaDadosRow extends SupabaseDataRow {
  EntradaDadosRow(super.data);

  @override
  SupabaseTable get table => EntradaDadosTable();

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

  String? get tipoEntradaDado => getField<String>('tipo_entrada_dado');
  set tipoEntradaDado(String? value) =>
      setField<String>('tipo_entrada_dado', value);

  int? get ordemEntrada => getField<int>('ordem_entrada');
  set ordemEntrada(int? value) => setField<int>('ordem_entrada', value);

  int? get etapaOsId => getField<int>('etapa_os_id');
  set etapaOsId(int? value) => setField<int>('etapa_os_id', value);
}
