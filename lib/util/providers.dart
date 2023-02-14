import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Client httpClient(HttpClientRef ref) => Client();
