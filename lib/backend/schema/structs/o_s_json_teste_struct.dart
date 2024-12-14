// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OSJsonTesteStruct extends BaseStruct {
  OSJsonTesteStruct({
    int? id,
    String? createdAt,
    String? dtAdicao,
    String? dtEdicao,
    bool? ativo,
    String? osStatusTxt,
    String? osPrioridade,
    String? osMotivoDescricao,
    String? osObservacao,
    String? osConteudo,
    String? enderecoBairro,
    String? enderecoLogradouro,
    int? clienteId,
    String? dataAgendamento,
    String? tipoOsId,
    String? supervisorId,
    String? tecnicoRespId,
    String? tecnicoAuxId,
    bool? sync,
  })  : _id = id,
        _createdAt = createdAt,
        _dtAdicao = dtAdicao,
        _dtEdicao = dtEdicao,
        _ativo = ativo,
        _osStatusTxt = osStatusTxt,
        _osPrioridade = osPrioridade,
        _osMotivoDescricao = osMotivoDescricao,
        _osObservacao = osObservacao,
        _osConteudo = osConteudo,
        _enderecoBairro = enderecoBairro,
        _enderecoLogradouro = enderecoLogradouro,
        _clienteId = clienteId,
        _dataAgendamento = dataAgendamento,
        _tipoOsId = tipoOsId,
        _supervisorId = supervisorId,
        _tecnicoRespId = tecnicoRespId,
        _tecnicoAuxId = tecnicoAuxId,
        _sync = sync;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "dt_adicao" field.
  String? _dtAdicao;
  String get dtAdicao => _dtAdicao ?? '';
  set dtAdicao(String? val) => _dtAdicao = val;

  bool hasDtAdicao() => _dtAdicao != null;

  // "dt_edicao" field.
  String? _dtEdicao;
  String get dtEdicao => _dtEdicao ?? '';
  set dtEdicao(String? val) => _dtEdicao = val;

  bool hasDtEdicao() => _dtEdicao != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? true;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "os_status_txt" field.
  String? _osStatusTxt;
  String get osStatusTxt => _osStatusTxt ?? '';
  set osStatusTxt(String? val) => _osStatusTxt = val;

  bool hasOsStatusTxt() => _osStatusTxt != null;

  // "os_prioridade" field.
  String? _osPrioridade;
  String get osPrioridade => _osPrioridade ?? '';
  set osPrioridade(String? val) => _osPrioridade = val;

  bool hasOsPrioridade() => _osPrioridade != null;

  // "os_motivo_descricao" field.
  String? _osMotivoDescricao;
  String get osMotivoDescricao => _osMotivoDescricao ?? '';
  set osMotivoDescricao(String? val) => _osMotivoDescricao = val;

  bool hasOsMotivoDescricao() => _osMotivoDescricao != null;

  // "os_observacao" field.
  String? _osObservacao;
  String get osObservacao => _osObservacao ?? '';
  set osObservacao(String? val) => _osObservacao = val;

  bool hasOsObservacao() => _osObservacao != null;

  // "os_conteudo" field.
  String? _osConteudo;
  String get osConteudo => _osConteudo ?? '';
  set osConteudo(String? val) => _osConteudo = val;

  bool hasOsConteudo() => _osConteudo != null;

  // "endereco_bairro" field.
  String? _enderecoBairro;
  String get enderecoBairro => _enderecoBairro ?? '';
  set enderecoBairro(String? val) => _enderecoBairro = val;

  bool hasEnderecoBairro() => _enderecoBairro != null;

  // "endereco_logradouro" field.
  String? _enderecoLogradouro;
  String get enderecoLogradouro => _enderecoLogradouro ?? '';
  set enderecoLogradouro(String? val) => _enderecoLogradouro = val;

  bool hasEnderecoLogradouro() => _enderecoLogradouro != null;

  // "cliente_id" field.
  int? _clienteId;
  int get clienteId => _clienteId ?? 0;
  set clienteId(int? val) => _clienteId = val;

  void incrementClienteId(int amount) => clienteId = clienteId + amount;

  bool hasClienteId() => _clienteId != null;

  // "data_agendamento" field.
  String? _dataAgendamento;
  String get dataAgendamento => _dataAgendamento ?? '';
  set dataAgendamento(String? val) => _dataAgendamento = val;

  bool hasDataAgendamento() => _dataAgendamento != null;

  // "tipo_os_id" field.
  String? _tipoOsId;
  String get tipoOsId => _tipoOsId ?? '';
  set tipoOsId(String? val) => _tipoOsId = val;

  bool hasTipoOsId() => _tipoOsId != null;

  // "supervisor_id" field.
  String? _supervisorId;
  String get supervisorId => _supervisorId ?? '';
  set supervisorId(String? val) => _supervisorId = val;

  bool hasSupervisorId() => _supervisorId != null;

  // "tecnico_resp_id" field.
  String? _tecnicoRespId;
  String get tecnicoRespId => _tecnicoRespId ?? '';
  set tecnicoRespId(String? val) => _tecnicoRespId = val;

  bool hasTecnicoRespId() => _tecnicoRespId != null;

  // "tecnico_aux_id" field.
  String? _tecnicoAuxId;
  String get tecnicoAuxId => _tecnicoAuxId ?? '';
  set tecnicoAuxId(String? val) => _tecnicoAuxId = val;

  bool hasTecnicoAuxId() => _tecnicoAuxId != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? true;
  set sync(bool? val) => _sync = val;

  bool hasSync() => _sync != null;

  static OSJsonTesteStruct fromMap(Map<String, dynamic> data) =>
      OSJsonTesteStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        dtAdicao: data['dt_adicao'] as String?,
        dtEdicao: data['dt_edicao'] as String?,
        ativo: data['ativo'] as bool?,
        osStatusTxt: data['os_status_txt'] as String?,
        osPrioridade: data['os_prioridade'] as String?,
        osMotivoDescricao: data['os_motivo_descricao'] as String?,
        osObservacao: data['os_observacao'] as String?,
        osConteudo: data['os_conteudo'] as String?,
        enderecoBairro: data['endereco_bairro'] as String?,
        enderecoLogradouro: data['endereco_logradouro'] as String?,
        clienteId: castToType<int>(data['cliente_id']),
        dataAgendamento: data['data_agendamento'] as String?,
        tipoOsId: data['tipo_os_id'] as String?,
        supervisorId: data['supervisor_id'] as String?,
        tecnicoRespId: data['tecnico_resp_id'] as String?,
        tecnicoAuxId: data['tecnico_aux_id'] as String?,
        sync: data['sync'] as bool?,
      );

  static OSJsonTesteStruct? maybeFromMap(dynamic data) => data is Map
      ? OSJsonTesteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'dt_adicao': _dtAdicao,
        'dt_edicao': _dtEdicao,
        'ativo': _ativo,
        'os_status_txt': _osStatusTxt,
        'os_prioridade': _osPrioridade,
        'os_motivo_descricao': _osMotivoDescricao,
        'os_observacao': _osObservacao,
        'os_conteudo': _osConteudo,
        'endereco_bairro': _enderecoBairro,
        'endereco_logradouro': _enderecoLogradouro,
        'cliente_id': _clienteId,
        'data_agendamento': _dataAgendamento,
        'tipo_os_id': _tipoOsId,
        'supervisor_id': _supervisorId,
        'tecnico_resp_id': _tecnicoRespId,
        'tecnico_aux_id': _tecnicoAuxId,
        'sync': _sync,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'dt_adicao': serializeParam(
          _dtAdicao,
          ParamType.String,
        ),
        'dt_edicao': serializeParam(
          _dtEdicao,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'os_status_txt': serializeParam(
          _osStatusTxt,
          ParamType.String,
        ),
        'os_prioridade': serializeParam(
          _osPrioridade,
          ParamType.String,
        ),
        'os_motivo_descricao': serializeParam(
          _osMotivoDescricao,
          ParamType.String,
        ),
        'os_observacao': serializeParam(
          _osObservacao,
          ParamType.String,
        ),
        'os_conteudo': serializeParam(
          _osConteudo,
          ParamType.String,
        ),
        'endereco_bairro': serializeParam(
          _enderecoBairro,
          ParamType.String,
        ),
        'endereco_logradouro': serializeParam(
          _enderecoLogradouro,
          ParamType.String,
        ),
        'cliente_id': serializeParam(
          _clienteId,
          ParamType.int,
        ),
        'data_agendamento': serializeParam(
          _dataAgendamento,
          ParamType.String,
        ),
        'tipo_os_id': serializeParam(
          _tipoOsId,
          ParamType.String,
        ),
        'supervisor_id': serializeParam(
          _supervisorId,
          ParamType.String,
        ),
        'tecnico_resp_id': serializeParam(
          _tecnicoRespId,
          ParamType.String,
        ),
        'tecnico_aux_id': serializeParam(
          _tecnicoAuxId,
          ParamType.String,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.bool,
        ),
      }.withoutNulls;

  static OSJsonTesteStruct fromSerializableMap(Map<String, dynamic> data) =>
      OSJsonTesteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        dtAdicao: deserializeParam(
          data['dt_adicao'],
          ParamType.String,
          false,
        ),
        dtEdicao: deserializeParam(
          data['dt_edicao'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        osStatusTxt: deserializeParam(
          data['os_status_txt'],
          ParamType.String,
          false,
        ),
        osPrioridade: deserializeParam(
          data['os_prioridade'],
          ParamType.String,
          false,
        ),
        osMotivoDescricao: deserializeParam(
          data['os_motivo_descricao'],
          ParamType.String,
          false,
        ),
        osObservacao: deserializeParam(
          data['os_observacao'],
          ParamType.String,
          false,
        ),
        osConteudo: deserializeParam(
          data['os_conteudo'],
          ParamType.String,
          false,
        ),
        enderecoBairro: deserializeParam(
          data['endereco_bairro'],
          ParamType.String,
          false,
        ),
        enderecoLogradouro: deserializeParam(
          data['endereco_logradouro'],
          ParamType.String,
          false,
        ),
        clienteId: deserializeParam(
          data['cliente_id'],
          ParamType.int,
          false,
        ),
        dataAgendamento: deserializeParam(
          data['data_agendamento'],
          ParamType.String,
          false,
        ),
        tipoOsId: deserializeParam(
          data['tipo_os_id'],
          ParamType.String,
          false,
        ),
        supervisorId: deserializeParam(
          data['supervisor_id'],
          ParamType.String,
          false,
        ),
        tecnicoRespId: deserializeParam(
          data['tecnico_resp_id'],
          ParamType.String,
          false,
        ),
        tecnicoAuxId: deserializeParam(
          data['tecnico_aux_id'],
          ParamType.String,
          false,
        ),
        sync: deserializeParam(
          data['sync'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'OSJsonTesteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OSJsonTesteStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        dtAdicao == other.dtAdicao &&
        dtEdicao == other.dtEdicao &&
        ativo == other.ativo &&
        osStatusTxt == other.osStatusTxt &&
        osPrioridade == other.osPrioridade &&
        osMotivoDescricao == other.osMotivoDescricao &&
        osObservacao == other.osObservacao &&
        osConteudo == other.osConteudo &&
        enderecoBairro == other.enderecoBairro &&
        enderecoLogradouro == other.enderecoLogradouro &&
        clienteId == other.clienteId &&
        dataAgendamento == other.dataAgendamento &&
        tipoOsId == other.tipoOsId &&
        supervisorId == other.supervisorId &&
        tecnicoRespId == other.tecnicoRespId &&
        tecnicoAuxId == other.tecnicoAuxId &&
        sync == other.sync;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        dtAdicao,
        dtEdicao,
        ativo,
        osStatusTxt,
        osPrioridade,
        osMotivoDescricao,
        osObservacao,
        osConteudo,
        enderecoBairro,
        enderecoLogradouro,
        clienteId,
        dataAgendamento,
        tipoOsId,
        supervisorId,
        tecnicoRespId,
        tecnicoAuxId,
        sync
      ]);
}

OSJsonTesteStruct createOSJsonTesteStruct({
  int? id,
  String? createdAt,
  String? dtAdicao,
  String? dtEdicao,
  bool? ativo,
  String? osStatusTxt,
  String? osPrioridade,
  String? osMotivoDescricao,
  String? osObservacao,
  String? osConteudo,
  String? enderecoBairro,
  String? enderecoLogradouro,
  int? clienteId,
  String? dataAgendamento,
  String? tipoOsId,
  String? supervisorId,
  String? tecnicoRespId,
  String? tecnicoAuxId,
  bool? sync,
}) =>
    OSJsonTesteStruct(
      id: id,
      createdAt: createdAt,
      dtAdicao: dtAdicao,
      dtEdicao: dtEdicao,
      ativo: ativo,
      osStatusTxt: osStatusTxt,
      osPrioridade: osPrioridade,
      osMotivoDescricao: osMotivoDescricao,
      osObservacao: osObservacao,
      osConteudo: osConteudo,
      enderecoBairro: enderecoBairro,
      enderecoLogradouro: enderecoLogradouro,
      clienteId: clienteId,
      dataAgendamento: dataAgendamento,
      tipoOsId: tipoOsId,
      supervisorId: supervisorId,
      tecnicoRespId: tecnicoRespId,
      tecnicoAuxId: tecnicoAuxId,
      sync: sync,
    );
