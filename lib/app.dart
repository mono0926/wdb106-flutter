import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/items_page/items_page.dart';

class App extends StatelessWidget {
  const App();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: context.watch<GlobalKey<NavigatorState>>(),
      home: const ItemsPage(),
    );
  }
}
