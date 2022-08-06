import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final httpClientProvider = Provider((ref) => Client());
