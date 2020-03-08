import 'package:flutter/material.dart';

import 'pages/items_page/items_page.dart';

class App extends StatelessWidget {
  const App();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ItemsPage(),
    );
  }
}
