import 'package:flutter/material.dart';

import 'pages/common/cart_bloc_provider.dart';
import 'pages/items_page/items_page.dart';

class App extends StatelessWidget {
  const App();
  @override
  Widget build(BuildContext context) {
    return CartBlocProvider(
      child: const MaterialApp(
        home: ItemsPage(),
      ),
    );
  }
}
