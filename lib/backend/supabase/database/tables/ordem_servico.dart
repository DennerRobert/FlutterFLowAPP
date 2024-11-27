import '../database.dart';

class OrdemServicoTable extends SupabaseTable<OrdemServicoRow> {
  @override
  String get tableName => 'ordem_servico';

  @override
  OrdemServicoRow createRow(Map<String, dynamic> data) => OrdemServicoRow(data);
}

class OrdemServicoRow extends SupabaseDataRow {
  OrdemServicoRow(super.data);

  @override
  SupabaseTable get table => OrdemServicoTable();

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

  String? get osStatusTxt => getField<String>('os_status_txt');
  set osStatusTxt(String? value) => setField<String>('os_status_txt', value);

  String? get osPrioridade => getField<String>('os_prioridade');
  set osPrioridade(String? value) => setField<String>('os_prioridade', value);

  String? get osMotivoDescricao => getField<String>('os_motivo_descricao');
  set osMotivoDescricao(String? value) =>
      setField<String>('os_motivo_descricao', value);

  String? get osObservacao => getField<String>('os_observacao');
  set osObservacao(String? value) => setField<String>('os_observacao', value);

  String? get osConteudo => getField<String>('os_conteudo');
  set osConteudo(String? value) => setField<String>('os_conteudo', value);

  String? get enderecoBairro => getField<String>('endereco_bairro');
  set enderecoBairro(String? value) =>
      setField<String>('endereco_bairro', value);

  String? get enderecoLogradouro => getField<String>('endereco_logradouro');
  set enderecoLogradouro(String? value) =>
      setField<String>('endereco_logradouro', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  DateTime? get dataAgendamento => getField<DateTime>('data_agendamento');
  set dataAgendamento(DateTime? value) =>
      setField<DateTime>('data_agendamento', value);

  int? get tipoOsId => getField<int>('tipo_os_id');
  set tipoOsId(int? value) => setField<int>('tipo_os_id', value);

  int? get supervisorId => getField<int>('supervisor_id');
  set supervisorId(int? value) => setField<int>('supervisor_id', value);

  int? get tecnicoRespId => getField<int>('tecnico_resp_id');
  set tecnicoRespId(int? value) => setField<int>('tecnico_resp_id', value);

  int? get tecnicoAuxId => getField<int>('tecnico_aux_id');
  set tecnicoAuxId(int? value) => setField<int>('tecnico_aux_id', value);
}
