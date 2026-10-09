import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pag04_verificar_model.dart';
export 'pag04_verificar_model.dart';

class Pag04VerificarWidget extends StatefulWidget {
  const Pag04VerificarWidget({
    super.key,
    required this.email,
  });

  final String? email;

  static String routeName = 'Pag04Verificar';
  static String routePath = '/pag04Verificar';

  @override
  State<Pag04VerificarWidget> createState() => _Pag04VerificarWidgetState();
}

class _Pag04VerificarWidgetState extends State<Pag04VerificarWidget> {
  late Pag04VerificarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pag04VerificarModel());

    _model.pinCodeFocusNode ??= FocusNode();
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
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(10.0, 200.0, 20.0, 200.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).creme,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      width: 2.0,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 150.0, 0.0, 0.0),
                        child: PinCodeTextField(
                          autoDisposeControllers: false,
                          appContext: context,
                          length: 6,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).textoMarrom,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: false,
                          autoFocus: true,
                          focusNode: _model.pinCodeFocusNode,
                          enablePinAutofill: false,
                          errorTextSpace: 16.0,
                          showCursor: true,
                          cursorColor: FlutterFlowTheme.of(context).textoMarrom,
                          obscureText: false,
                          hintCharacter: '●',
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          pinTheme: PinTheme(
                            fieldHeight: 44.0,
                            fieldWidth: 44.0,
                            borderWidth: 2.0,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                            shape: PinCodeFieldShape.box,
                            activeColor:
                                FlutterFlowTheme.of(context).tomDeTerracota,
                            inactiveColor:
                                FlutterFlowTheme.of(context).tomDeTerracota,
                            selectedColor:
                                FlutterFlowTheme.of(context).tomDeTerracota,
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: _model.pinCodeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              105.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Verificação',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .tomDeTerracota,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              105.0, 40.0, 105.0, 0.0),
                          child: Text(
                            ' Verifique seu e-mail',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .tomDeTerracota,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              100.0, 250.0, 100.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              _model.apiResultanf = await ValidaOTPCall.call(
                                codigoOpt: _model.pinCodeController!.text,
                                email: widget.email,
                              );

                              _shouldSetState = true;
                              if ((_model.apiResultanf?.succeeded ?? true)) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Codigo Validado com sucesso',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );

                                context.pushNamed(
                                    Pag05CadastroCEPWidget.routeName);

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Codigo invalido',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0xFFF00303),
                                  ),
                                );
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                            text: 'Verificar',
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).tomDeTerracota,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.robotoSlab(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).creme,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
