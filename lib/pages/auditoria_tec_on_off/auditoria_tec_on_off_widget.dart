import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'auditoria_tec_on_off_model.dart';
export 'auditoria_tec_on_off_model.dart';

class AuditoriaTecOnOffWidget extends StatefulWidget {
  /// Página secundária da Ordem de Serviço, onde são anexadas as imagens
  /// referentes à Ordem de Serviço.
  const AuditoriaTecOnOffWidget({
    super.key,
    required this.ordemServicoId,
    required this.idSelecionado,
  });

  final int? ordemServicoId;
  final int? idSelecionado;

  @override
  State<AuditoriaTecOnOffWidget> createState() =>
      _AuditoriaTecOnOffWidgetState();
}

class _AuditoriaTecOnOffWidgetState extends State<AuditoriaTecOnOffWidget> {
  late AuditoriaTecOnOffModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuditoriaTecOnOffModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
