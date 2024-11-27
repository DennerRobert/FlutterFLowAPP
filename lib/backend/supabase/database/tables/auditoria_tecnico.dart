import '../database.dart';

class AuditoriaTecnicoTable extends SupabaseTable<AuditoriaTecnicoRow> {
  @override
  String get tableName => 'auditoria_tecnico';

  @override
  AuditoriaTecnicoRow createRow(Map<String, dynamic> data) =>
      AuditoriaTecnicoRow(data);
}

class AuditoriaTecnicoRow extends SupabaseDataRow {
  AuditoriaTecnicoRow(super.data);

  @override
  SupabaseTable get table => AuditoriaTecnicoTable();

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

  bool? get trabalhoRealizado => getField<bool>('trabalho_realizado');
  set trabalhoRealizado(bool? value) =>
      setField<bool>('trabalho_realizado', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get fotoInicial => getField<String>('foto_inicial');
  set fotoInicial(String? value) => setField<String>('foto_inicial', value);

  String? get fotoFinal => getField<String>('foto_final');
  set fotoFinal(String? value) => setField<String>('foto_final', value);

  int? get auditorId => getField<int>('auditor_id');
  set auditorId(int? value) => setField<int>('auditor_id', value);

  int? get ordemServicoId => getField<int>('ordem_servico_id');
  set ordemServicoId(int? value) => setField<int>('ordem_servico_id', value);
}
