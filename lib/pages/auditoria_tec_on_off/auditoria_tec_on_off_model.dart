import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auditoria_tec_on_off_widget.dart' show AuditoriaTecOnOffWidget;
import 'package:flutter/material.dart';

class AuditoriaTecOnOffModel extends FlutterFlowModel<AuditoriaTecOnOffWidget> {
  ///  Local state fields for this page.

  int? idpg = 1;

  List<dynamic> databaselocal = [];
  void addToDatabaselocal(dynamic item) => databaselocal.add(item);
  void removeFromDatabaselocal(dynamic item) => databaselocal.remove(item);
  void removeAtIndexFromDatabaselocal(int index) =>
      databaselocal.removeAt(index);
  void insertAtIndexInDatabaselocal(int index, dynamic item) =>
      databaselocal.insert(index, item);
  void updateDatabaselocalAtIndex(int index, Function(dynamic) updateFn) =>
      databaselocal[index] = updateFn(databaselocal[index]);

  bool verificarInternet = true;

  bool? clickBotao = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getEtapaOS)] action in AuditoriaTecOnOff widget.
  ApiCallResponse? etapaOS;
  // Stores action output result for [Backend Call - API (getEntradaDados)] action in AuditoriaTecOnOff widget.
  ApiCallResponse? entradaDados;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - converteBase64] action in Image widget.
  String? uploadimage;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
