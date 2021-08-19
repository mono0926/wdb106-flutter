import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

final httpClientProvider = Provider((ref) => Client());
final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());
