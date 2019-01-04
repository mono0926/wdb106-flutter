import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/service_provider.dart';

import 'app.dart';

void main() {
  runApp(ServiceProvider(
    apiClient: MockyApiClient(),
    child: const App(),
  ));
}
