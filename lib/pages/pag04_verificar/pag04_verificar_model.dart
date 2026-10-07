import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pag04_verificar_widget.dart' show Pag04VerificarWidget;
import 'package:flutter/material.dart';

class Pag04VerificarModel extends FlutterFlowModel<Pag04VerificarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
