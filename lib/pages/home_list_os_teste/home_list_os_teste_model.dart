import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_list_os_teste_widget.dart' show HomeListOsTesteWidget;
import 'package:flutter/material.dart';

class HomeListOsTesteModel extends FlutterFlowModel<HomeListOsTesteWidget> {
  ///  Local state fields for this page.

  String searchActive = '1';

  String? searchText;

  bool online = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getDadosUsuario)] action in HomeListOsTeste widget.
  ApiCallResponse? requisicaoAPI;
  // Stores action output result for [Backend Call - API (getOrdensServico)] action in HomeListOsTeste widget.
  ApiCallResponse? dudu;
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
