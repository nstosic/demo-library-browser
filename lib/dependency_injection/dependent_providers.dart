import 'package:demo_books/api/api_client.dart';
import 'package:demo_books/api/api_serializer.dart';
import 'package:demo_books/repo/books_repository.dart';
import 'package:demo_books/repo/stores_repository.dart';
import 'package:demo_books/util/constants.dart';
import 'package:provider/provider.dart';

final dependentProviders = [
  ProxyProvider<ApiSerializer, ApiClient>(
    lazy: true,
    update: (context, apiSerializer, instance) =>
        instance ?? ApiClient(Constants.timeoutDuration, apiSerializer),
  ),
  ProxyProvider<ApiClient, BooksRepository>(
    lazy: true,
    update: (context, apiClient, _) => BooksRepository(apiClient),
  ),
  ProxyProvider<ApiClient, StoresRepository>(
    lazy: true,
    update: (context, apiClient, _) => StoresRepository(apiClient),
  ),
];
