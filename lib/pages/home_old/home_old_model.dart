import '/flutter_flow/flutter_flow_util.dart';
import 'home_old_widget.dart' show HomeOldWidget;
import 'package:flutter/material.dart';

class HomeOldModel extends FlutterFlowModel<HomeOldWidget> {
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
