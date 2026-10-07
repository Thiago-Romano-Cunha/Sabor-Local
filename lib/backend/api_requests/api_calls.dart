import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CEP',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class CadastroCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? celular = '',
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Nome": ${nome == null ? 'null' : '"${escapeStringForJson(nome)}"'},
  "celular": ${celular == null ? 'null' : '"${escapeStringForJson(celular)}"'},
  "cpf": ${cpf == null ? 'null' : '"${escapeStringForJson(cpf)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastro',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:pLpV81mU/cadastro',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidacaoEmailCall {
  static Future<ApiCallResponse> call({
    String? imputemail = 'thigas.romano@gmail.com',
    String? imputNome = 'testarossa',
  }) async {
    final ffApiRequestBody = '''
{
  "created_at": "now",
  "name": ${imputNome == null ? 'null' : '"${escapeStringForJson(imputNome)}"'},
  "email": ${imputemail == null ? 'null' : '"${escapeStringForJson(imputemail)}"'},
  "password": null,
  "role": "",
  "password_reset": {
    "token": "",
    "expiration": null,
    "used": false
  },
  "papel_id": 6,
  "codigo_opt": "",
  "data_expiracao": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ValidacaoEmail',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:XuaVoVEX/user_teste',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
