import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_button.dart';
import 'items.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('商品リスト'),
        leading: CartButton.withDependencies(),
      ),
      body: Items.withDependencies(),
    );
  }
}
