import 'package:demo_books/api/api_serializer.dart';
import 'package:provider/provider.dart';

final indepentProviders = [
  Provider<ApiSerializer>(
    create: (context) => ApiSerializer(),
  ),
];
