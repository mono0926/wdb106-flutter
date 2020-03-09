// TODO(mono): アニメーション
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../widgets/widgets.dart';
import 'cart_header.dart';
import 'cart_items.dart';

// TODO(mono): Statelessにする
class CartPage extends StatefulWidget {
  const CartPage();
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  VoidCallback _removeListener;

  @override
  void initState() {
    super.initState();
    final controller = context.read<CartController>();
    _removeListener = controller.addListener((state) {
      if (state.summary.totalPrice <= 0) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: const Text('カート'),
          leading: NavigationBarButton(
            text: '閉じる',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          children: const [
            CartHeader(),
            Expanded(child: CartItems()),
          ],
        ));
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }
}
