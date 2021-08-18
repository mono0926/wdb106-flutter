import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

final httpClientProvider = Provider((ref) => Client());
