import 'dart:convert';

import 'package:demo_books/api/api_serializer.dart';
import 'package:demo_books/api/filter_strategy.dart';
import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/util/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

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
    if (kDebugMode) {
      _client.interceptors.add(LogInterceptor());
    }
    _client.interceptors.add(
      InterceptorsWrapper(onResponse: (response, handler) {
        final json = jsonDecode(response.data as String) as Map<String, dynamic>;
        // Strip metadata
        response.data = json['data'];
        handler.next(response);
      }),
    );
    _client.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          if (response.requestOptions.extra['serializer'] is dynamic Function(
              Map<String, dynamic>)) {
            assert(
              response.data is Map<String, dynamic>,
              'Received response is not a valid JSON',
            );
            final serializer = response.requestOptions.extra['serializer'] as dynamic Function(
                Map<String, dynamic>);
            response.data = serializer.call(response.data as Map<String, dynamic>);
          } else if (response.requestOptions.extra['serializer'] is dynamic Function(
              List<Map<String, dynamic>>)) {
            assert(
              response.data is List<dynamic>,
              'Received response is not a valid JSON array',
            );
            final serializer = response.requestOptions.extra['serializer'] as dynamic Function(
                List<Map<String, dynamic>>);
            response.data = serializer.call((response.data as List).cast<Map<String, dynamic>>());
          }
          handler.next(response);
        },
      ),
    );
  }

  late Dio _client;
  final ApiSerializer _serializer;

  String _buildUrl(String baseUrl, List<FilterStrategy> filters) {
    final urlBuilder = StringBuffer();
    urlBuilder.write(baseUrl);
    urlBuilder.write('?page[size]=55');
    for (final filter in filters) {
      urlBuilder.write('&');
      urlBuilder.write(filter.toString());
    }
    return urlBuilder.toString();
  }

  Future<List<T>> getRemoteCollection<T extends BaseModel>({
    required String url,
    List<FilterStrategy>? filters,
  }) async {
    final processedUrl = _buildUrl(url, filters ?? <FilterStrategy>[]);
    final response = await _client.get<List<T>>(
      processedUrl,
      options: Options(
        extra: <String, dynamic>{
          'serializer': (List<Map<String, dynamic>> json) => _serializer.fromJsonArray<T>(json)
        },
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
        extra: <String, dynamic>{
          'serializer': (Map<String, dynamic> json) => _serializer.fromJson<T>(json)
        },
      ),
    );
    if (response.data != null && response.data is T) {
      return response.data!;
    }
    return Future.error(Exception());
  }
}
