import 'package:demo_books/api/api_serializer.dart';
import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/util/constants.dart';
import 'package:dio/dio.dart';

class ApiClient {
  ApiClient(
    Duration timeout,
    this._serializer,
  ) {
    _client = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        contentType: 'application/json',
        connectTimeout: timeout.inMilliseconds,
        receiveTimeout: timeout.inMilliseconds,
        responseType: ResponseType.json,
      ),
    );
    _client.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          assert(
            response.data is Map<String, dynamic>,
            'Received response is not a valid JSON',
          );
          if (response.requestOptions.extra['serializer'] is dynamic Function(Map<String, dynamic>)) {
            final serializer = response.requestOptions.extra['serializer'] as dynamic Function(Map<String, dynamic>);
            response.data = serializer.call(response.data as Map<String, dynamic>);
          } else if (response.requestOptions.extra['serializer'] is dynamic Function(List<Map<String, dynamic>>)) {
            final serializer =
                response.requestOptions.extra['serializer'] as dynamic Function(List<Map<String, dynamic>>);
            response.data = serializer.call(response.data as List<Map<String, dynamic>>);
          }
          handler.next(response);
        },
      ),
    );
  }

  late Dio _client;
  final ApiSerializer _serializer;

  Future<List<T>> getRemoteCollection<T extends BaseModel>({required String url}) async {
    final response = await _client.get<List<T>>(
      url,
      options: Options(
        extra: <String, dynamic>{'serializer': (List<Map<String, dynamic>> json) => _serializer.fromJsonArray<T>(json)},
      ),
    );
    if (response.data != null && response.data is List<T>) {
      return response.data!;
    }
    return Future.error(Exception());
  }

  Future<T> getRemoteDocument<T extends BaseModel>({required String url}) async {
    final response = await _client.get<T>(
      url,
      options: Options(
        extra: <String, dynamic>{'serializer': (Map<String, dynamic> json) => _serializer.fromJson<T>(json)},
      ),
    );
    if (response.data != null && response.data is T) {
      return response.data!;
    }
    return Future.error(Exception());
  }
}
