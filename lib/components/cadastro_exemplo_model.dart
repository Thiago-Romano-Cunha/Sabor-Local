import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_exemplo_widget.dart' show CadastroExemploWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroExemploModel extends FlutterFlowModel<CadastroExemploWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldCEP widget.
  FocusNode? textFieldCEPFocusNode;
  TextEditingController? textFieldCEPTextController;
  late MaskTextInputFormatter textFieldCEPMask;
  String? Function(BuildContext, String?)? textFieldCEPTextControllerValidator;
  // Stores action output result for [Backend Call - API (CEP)] action in TextFieldCEP widget.
  ApiCallResponse? apiResult3x2;
  // State field(s) for TextFieldRUA widget.
  FocusNode? textFieldRUAFocusNode;
  TextEditingController? textFieldRUATextController;
  String? Function(BuildContext, String?)? textFieldRUATextControllerValidator;
  // State field(s) for TextFieldComp widget.
  FocusNode? textFieldCompFocusNode1;
  TextEditingController? textFieldCompTextController1;
  String? Function(BuildContext, String?)?
      textFieldCompTextController1Validator;
  // State field(s) for TextFieldComp widget.
  FocusNode? textFieldCompFocusNode2;
  TextEditingController? textFieldCompTextController2;
  String? Function(BuildContext, String?)?
      textFieldCompTextController2Validator;
  // State field(s) for TextFieldComp widget.
  FocusNode? textFieldCompFocusNode3;
  TextEditingController? textFieldCompTextController3;
  String? Function(BuildContext, String?)?
      textFieldCompTextController3Validator;
  // State field(s) for TextFieldComp widget.
  FocusNode? textFieldCompFocusNode4;
  TextEditingController? textFieldCompTextController4;
  String? Function(BuildContext, String?)?
      textFieldCompTextController4Validator;
  // Stores action output result for [Backend Call - API (Enderenco)] action in Button widget.
  ApiCallResponse? apiResult0ot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCEPFocusNode?.dispose();
    textFieldCEPTextController?.dispose();

    textFieldRUAFocusNode?.dispose();
    textFieldRUATextController?.dispose();

    textFieldCompFocusNode1?.dispose();
    textFieldCompTextController1?.dispose();

    textFieldCompFocusNode2?.dispose();
    textFieldCompTextController2?.dispose();

    textFieldCompFocusNode3?.dispose();
    textFieldCompTextController3?.dispose();

    textFieldCompFocusNode4?.dispose();
    textFieldCompTextController4?.dispose();
  }
}
