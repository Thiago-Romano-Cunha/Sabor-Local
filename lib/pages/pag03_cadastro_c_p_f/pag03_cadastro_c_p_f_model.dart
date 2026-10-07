import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pag03_cadastro_c_p_f_widget.dart' show Pag03CadastroCPFWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Pag03CadastroCPFModel extends FlutterFlowModel<Pag03CadastroCPFWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode1;
  TextEditingController? textFieldEmailTextController1;
  String? Function(BuildContext, String?)?
      textFieldEmailTextController1Validator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode2;
  TextEditingController? textFieldEmailTextController2;
  String? Function(BuildContext, String?)?
      textFieldEmailTextController2Validator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode3;
  TextEditingController? textFieldEmailTextController3;
  String? Function(BuildContext, String?)?
      textFieldEmailTextController3Validator;
  // State field(s) for TextFieldCelular widget.
  FocusNode? textFieldCelularFocusNode;
  TextEditingController? textFieldCelularTextController;
  late MaskTextInputFormatter textFieldCelularMask;
  String? Function(BuildContext, String?)?
      textFieldCelularTextControllerValidator;
  // State field(s) for TextFieldSenha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  late bool textFieldSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Cadastro)] action in Verificacao widget.
  ApiCallResponse? apiResultejq;
  // Stores action output result for [Backend Call - API (ValidacaoEmail)] action in Verificacao widget.
  ApiCallResponse? apiResultefa;

  @override
  void initState(BuildContext context) {
    textFieldSenhaVisibility = false;
  }

  @override
  void dispose() {
    textFieldEmailFocusNode1?.dispose();
    textFieldEmailTextController1?.dispose();

    textFieldEmailFocusNode2?.dispose();
    textFieldEmailTextController2?.dispose();

    textFieldEmailFocusNode3?.dispose();
    textFieldEmailTextController3?.dispose();

    textFieldCelularFocusNode?.dispose();
    textFieldCelularTextController?.dispose();

    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();
  }
}
