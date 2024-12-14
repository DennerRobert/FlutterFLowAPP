import '/backend/api_requests/api_calls.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_list_os_widget.dart' show HomeListOsWidget;
import 'package:flutter/material.dart';

class HomeListOsModel extends FlutterFlowModel<HomeListOsWidget> {
  ///  Local state fields for this page.

  String searchActive = '1';

  String? searchText;

  int contador = 0;

  int? idSupabase;

  int? idSqlite;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getOrdensServico)] action in HomeListOs widget.
  ApiCallResponse? oSAPIResponse;
  // Stores action output result for [Backend Call - SQLite (getAllOSsCopy)] action in HomeListOs widget.
  List<GetAllOSsCopyRow>? iDOSBaseLocal;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
