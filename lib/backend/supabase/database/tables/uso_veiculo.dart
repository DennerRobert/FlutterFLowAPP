import '../database.dart';

class UsoVeiculoTable extends SupabaseTable<UsoVeiculoRow> {
  @override
  String get tableName => 'uso_veiculo';

  @override
  UsoVeiculoRow createRow(Map<String, dynamic> data) => UsoVeiculoRow(data);
}

class UsoVeiculoRow extends SupabaseDataRow {
  UsoVeiculoRow(super.data);

  @override
  SupabaseTable get table => UsoVeiculoTable();

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

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  int? get tecnicoRespId => getField<int>('tecnico_resp_id');
  set tecnicoRespId(int? value) => setField<int>('tecnico_resp_id', value);

  int? get tecnicoAuxId => getField<int>('tecnico_aux_id');
  set tecnicoAuxId(int? value) => setField<int>('tecnico_aux_id', value);

  DateTime? get dataUso => getField<DateTime>('data_uso');
  set dataUso(DateTime? value) => setField<DateTime>('data_uso', value);
}
