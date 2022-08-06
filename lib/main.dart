import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'app.dart';

void main() {
  Intl.defaultLocale = 'ja';
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
