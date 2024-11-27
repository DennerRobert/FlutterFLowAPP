import '/flutter_flow/flutter_flow_util.dart';
import 'home_list_os_widget.dart' show HomeListOsWidget;
import 'package:flutter/material.dart';

class HomeListOsModel extends FlutterFlowModel<HomeListOsWidget> {
  ///  Local state fields for this page.

  String searchActive = '1';

  String? searchText;

  ///  State fields for stateful widgets in this page.

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
