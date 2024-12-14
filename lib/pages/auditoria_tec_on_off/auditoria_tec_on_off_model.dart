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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
