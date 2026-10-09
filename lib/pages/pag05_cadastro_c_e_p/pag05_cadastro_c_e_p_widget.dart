import '/components/cadastro_exemplo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pag05_cadastro_c_e_p_model.dart';
export 'pag05_cadastro_c_e_p_model.dart';

/// Tela que permite o cadastro
class Pag05CadastroCEPWidget extends StatefulWidget {
  const Pag05CadastroCEPWidget({super.key});

  static String routeName = 'Pag05CadastroCEP';
  static String routePath = '/pag05CadastroCEP';

  @override
  State<Pag05CadastroCEPWidget> createState() => _Pag05CadastroCEPWidgetState();
}

class _Pag05CadastroCEPWidgetState extends State<Pag05CadastroCEPWidget> {
  late Pag05CadastroCEPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pag05CadastroCEPModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFB06F52),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0),
          child: AppBar(
            backgroundColor: Color(0xFFB06F52),
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: FlutterFlowTheme.of(context).creme,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              140.0, 0.0, 140.0, 0.0),
                          child: Text(
                            ' Cadastro',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  color: FlutterFlowTheme.of(context).creme,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Voltar',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).creme,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              105.0, 0.0, 100.0, 20.0),
                          child: Text(
                            'Preencha os campos abaixo',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).creme,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
              titlePadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
            ),
            elevation: 2.0,
          ),
        ),
        body: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.cadastroExemploModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CadastroExemploWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
