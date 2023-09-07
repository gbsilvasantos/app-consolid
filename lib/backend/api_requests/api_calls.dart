import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'apiCEP',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic logradouro(dynamic response) => getJsonField(
        response,
        r'''$.logradouro''',
      );
  static dynamic complemento(dynamic response) => getJsonField(
        response,
        r'''$.complemento''',
      );
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
      );
  static dynamic uf(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
      );
}

class AddFaceIDCall {
  static Future<ApiCallResponse> call({
    String? fileurl = '',
  }) {
    final ffApiRequestBody = '''
{
  "providers": "amazon",
  "file_url": "${fileurl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addFaceID',
      apiUrl: 'https://api.edenai.run/v2/image/face_recognition/add_face',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNDM0YjYyYTctM2RiZS00NmU0LThhZGYtNGM1NzAyYTVmNzc3IiwidHlwZSI6ImFwaV90b2tlbiJ9.3flnyHnU-5eMpg4OcK9nyXh2m0UMAg4tqsf2uhmuWcs',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic faceID(dynamic response) => getJsonField(
        response,
        r'''$.amazon.face_ids''',
        true,
      );
}

class DeleteFaceIDCall {
  static Future<ApiCallResponse> call({
    String? faceId = '',
  }) {
    final ffApiRequestBody = '''
{
  "providers": "amazon",
  "face_id": "${faceId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFaceID',
      apiUrl: 'https://api.edenai.run/v2/image/face_recognition/delete_face',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNDM0YjYyYTctM2RiZS00NmU0LThhZGYtNGM1NzAyYTVmNzc3IiwidHlwZSI6ImFwaV90b2tlbiJ9.3flnyHnU-5eMpg4OcK9nyXh2m0UMAg4tqsf2uhmuWcs',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
