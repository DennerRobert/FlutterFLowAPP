import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetEtapaOSCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEtapaOS',
      apiUrl: 'https://vpojiweakxijsuqlupio.supabase.co/rest/v1/etapa_os',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZwb2ppd2Vha3hpanN1cWx1cGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk3NzA0MjMsImV4cCI6MjA0NTM0NjQyM30.DVI10fDhc-tpdwhIkXIRkLjcj1UYXuSLsFKZ6qI7hKQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEntradaDadosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getEntradaDados',
      apiUrl: 'https://vpojiweakxijsuqlupio.supabase.co/rest/v1/entrada_dados',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZwb2ppd2Vha3hpanN1cWx1cGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk3NzA0MjMsImV4cCI6MjA0NTM0NjQyM30.DVI10fDhc-tpdwhIkXIRkLjcj1UYXuSLsFKZ6qI7hKQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDadosUsuarioCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDadosUsuario',
      apiUrl: 'https://vpojiweakxijsuqlupio.supabase.co/rest/v1/usuario',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZwb2ppd2Vha3hpanN1cWx1cGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk3NzA0MjMsImV4cCI6MjA0NTM0NjQyM30.DVI10fDhc-tpdwhIkXIRkLjcj1UYXuSLsFKZ6qI7hKQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrdensServicoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOrdensServico',
      apiUrl: 'https://vpojiweakxijsuqlupio.supabase.co/rest/v1/ordem_servico',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZwb2ppd2Vha3hpanN1cWx1cGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk3NzA0MjMsImV4cCI6MjA0NTM0NjQyM30.DVI10fDhc-tpdwhIkXIRkLjcj1UYXuSLsFKZ6qI7hKQ',
      },
      params: {},
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
