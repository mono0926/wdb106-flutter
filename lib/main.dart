import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/service_provider.dart';
import 'package:wdb106_sample/pages/items_page/items_page.dart';

void main() {
  runApp(
    ServiceProvider(
      apiClient: MockyApiClient(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ItemsPage(),
    );
  }
}
