import '/backend/api_requests/api_calls.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'auditoria_tec_on_off_model.dart';
export 'auditoria_tec_on_off_model.dart';

class AuditoriaTecOnOffWidget extends StatefulWidget {
  /// Página secundária da Ordem de Serviço, onde são anexadas as imagens
  /// referentes à Ordem de Serviço.
  const AuditoriaTecOnOffWidget({
    super.key,
    required this.ordemServicoId,
  });

  final int? ordemServicoId;

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

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.etapaOS = await GetEtapaOSCall.call();

          if ((_model.etapaOS?.succeeded ?? true)) {
            FFAppState().ListaEtapaOS =
                (_model.etapaOS?.jsonBody ?? '').toList().cast<dynamic>();
            safeSetState(() {});
            _model.verificarInternet = true;
            safeSetState(() {});
            await SQLiteManager.instance.getOSidSelecionado();
          } else {
            _model.verificarInternet = false;
            safeSetState(() {});
          }
        }),
        Future(() async {
          _model.entradaDados = await GetEntradaDadosCall.call();

          if ((_model.entradaDados?.succeeded ?? true)) {
            FFAppState().ListaEntradaDados =
                (_model.entradaDados?.jsonBody ?? '').toList().cast<dynamic>();
            safeSetState(() {});
          }
        }),
      ]);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Text(
            'Auditoria Pós Serviço',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (_model.verificarInternet == false)
              Builder(
                builder: (context) {
                  final listagemEtapasOS = FFAppState().ListaEtapaOS.toList();

                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(listagemEtapasOS.length,
                        (listagemEtapasOSIndex) {
                      final listagemEtapasOSItem =
                          listagemEtapasOS[listagemEtapasOSIndex];
                      return FFButtonWidget(
                        onPressed: () async {
                          _model.idpg = getJsonField(
                            listagemEtapasOSItem,
                            r'''$['id']''',
                          );
                          safeSetState(() {});
                        },
                        text: getJsonField(
                          listagemEtapasOSItem,
                          r'''$['titulo']''',
                        ).toString(),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      );
                    }),
                  );
                },
              ),
            if (_model.verificarInternet == true)
              FutureBuilder<List<GetOSidSelecionadoRow>>(
                future: SQLiteManager.instance.getOSidSelecionado(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final rowOnlineGetOSidSelecionadoRowList = snapshot.data!;

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          rowOnlineGetOSidSelecionadoRowList.length,
                          (rowOnlineIndex) {
                        final rowOnlineGetOSidSelecionadoRow =
                            rowOnlineGetOSidSelecionadoRowList[rowOnlineIndex];
                        return FFButtonWidget(
                          onPressed: () async {
                            safeSetState(() {});
                          },
                          text: rowOnlineGetOSidSelecionadoRow.titulo,
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            if (!_model.verificarInternet)
              Expanded(
                child: Builder(
                  builder: (context) {
                    final listEntradaDados =
                        FFAppState().ListaEntradaDados.toList();

                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: listEntradaDados.length,
                      itemBuilder: (context, listEntradaDadosIndex) {
                        final listEntradaDadosItem =
                            listEntradaDados[listEntradaDadosIndex];
                        return Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://silvrback.s3.amazonaws.com/uploads/fae5d2c9-6a2c-46cf-b018-3b906c93d8db/upload-jsf-inputFile_large.png',
                                  width: 100.0,
                                  height: 90.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                getJsonField(
                                  listEntradaDadosItem,
                                  r'''$['titulo']''',
                                ).toString(),
                                maxLines: 2,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            if (_model.verificarInternet)
              Expanded(
                child: FutureBuilder<List<EntradaDadosRow>>(
                  future: EntradaDadosTable().queryRows(
                    queryFn: (q) => q
                        .eqOrNull(
                          'etapa_os_id',
                          _model.idpg,
                        )
                        .order('id', ascending: true),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<EntradaDadosRow> gridViewOnlineEntradaDadosRowList =
                        snapshot.data!;

                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewOnlineEntradaDadosRowList.length,
                      itemBuilder: (context, gridViewOnlineIndex) {
                        final gridViewOnlineEntradaDadosRow =
                            gridViewOnlineEntradaDadosRowList[
                                gridViewOnlineIndex];
                        return FutureBuilder<List<DadosRow>>(
                          future: DadosTable().querySingleRow(
                            queryFn: (q) => q
                                .eqOrNull(
                                  'entrada_dados_id',
                                  gridViewOnlineEntradaDadosRow.id,
                                )
                                .eqOrNull(
                                  'ordem_servico_id',
                                  widget.ordemServicoId,
                                ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<DadosRow> containerDadosRowList =
                                snapshot.data!;

                            final containerDadosRow =
                                containerDadosRowList.isNotEmpty
                                    ? containerDadosRowList.first
                                    : null;

                            return Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      gridViewOnlineEntradaDadosRow.titulo,
                                      'titulo',
                                    ),
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        storageFolderPath: 'auditoria_tec',
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() =>
                                            _model.isDataUploading = true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                  ))
                                              .toList();

                                          downloadUrls =
                                              await uploadSupabaseStorageFiles(
                                            bucketName: 'teste_storage',
                                            selectedFiles: selectedMedia,
                                          );
                                        } finally {
                                          _model.isDataUploading = false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }

                                      await DadosTable().insert({
                                        'created_at': supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                        'dt_adicao': supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                        'dt_edicao': supaSerialize<DateTime>(
                                            getCurrentTimestamp),
                                        'ativo': true,
                                        'valor': _model.uploadedFileUrl,
                                        'ordem_servico_id':
                                            widget.ordemServicoId,
                                        'entrada_dados_id':
                                            gridViewOnlineEntradaDadosRow.id,
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        containerDadosRow?.valor == null ||
                                                containerDadosRow?.valor == ''
                                            ? 'https://media.istockphoto.com/id/1248723171/vector/camera-photo-upload-icon-on-isolated-white-background-eps-10-vector.jpg?s=170667a&w=0&k=20&c=pZLuIpooFddmg5MShQ7aujwjhad-QZm6DSRv_3qCmWc='
                                            : containerDadosRow!.valor!,
                                        width: 100.0,
                                        height: 90.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Adicionar fotos +',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                _model.idpg = _model.idpg! + 1;
                safeSetState(() {});
              },
              text: 'Próximo',
              options: FFButtonOptions(
                width: 100.0,
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            if (_model.idpg! > 1)
              FFButtonWidget(
                onPressed: () async {
                  _model.idpg = _model.idpg! + -1;
                  safeSetState(() {});
                },
                text: 'Voltar',
                options: FFButtonOptions(
                  width: 100.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
