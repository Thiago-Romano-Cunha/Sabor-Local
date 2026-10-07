import '/components/cadastro_exemplo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pag05_cadastro_c_e_p_widget.dart' show Pag05CadastroCEPWidget;
import 'package:flutter/material.dart';

class Pag05CadastroCEPModel extends FlutterFlowModel<Pag05CadastroCEPWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CadastroExemplo component.
  late CadastroExemploModel cadastroExemploModel;

  @override
  void initState(BuildContext context) {
    cadastroExemploModel = createModel(context, () => CadastroExemploModel());
  }

  @override
  void dispose() {
    cadastroExemploModel.dispose();
  }
}
