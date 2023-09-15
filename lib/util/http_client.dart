import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client.g.dart';

@riverpod
Client httpClient(HttpClientRef ref) => Client();
