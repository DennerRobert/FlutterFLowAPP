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
        body: SafeArea(
          top: true,
          child: Container(
            width: 431.0,
            height: 850.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
