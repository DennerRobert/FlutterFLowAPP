import '/flutter_flow/flutter_flow_util.dart';
import 'resetar_senha_widget.dart' show ResetarSenhaWidget;
import 'package:flutter/material.dart';

class ResetarSenhaModel extends FlutterFlowModel<ResetarSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_rec_send widget.
  FocusNode? emailRecSendFocusNode;
  TextEditingController? emailRecSendTextController;
  String? Function(BuildContext, String?)? emailRecSendTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailRecSendFocusNode?.dispose();
    emailRecSendTextController?.dispose();
  }
}
