import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'cart_button.dart';
import 'items.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('商品リスト'),
        leading: CartButton(),
      ),
      body: Items(),
    );
  }
}
