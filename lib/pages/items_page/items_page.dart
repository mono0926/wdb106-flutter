import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/pages/items_page/cart_button.dart';
import 'package:wdb106_sample/pages/items_page/items.dart';

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
