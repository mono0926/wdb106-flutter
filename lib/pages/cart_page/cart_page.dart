// TODO(mono): アニメーション
import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/widgets/widgets.dart';
import 'package:provider/provider.dart' hide Locator;

import 'cart_header.dart';
import 'cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return DisposableProvider(
      create: (context) => _Controller(read: context.read),
      child: const CartPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('カート'),
        leading: NavigationBarButton(
          text: '閉じる',
          onPressed: context.watch<_Controller>().pop,
        ),
      ),
      body: Column(
        children: const [
          CartHeader(),
          Expanded(child: CartItems()),
        ],
      ),
    );
  }
}

class _Controller with Disposable {
  _Controller({@required this.read}) {
    _removeListener = _cartController.addListener((state) {
      if (state.summary.totalPrice <= 0) {
        pop();
      }
    });
  }

  final Locator read;

  CartController get _cartController => read();
  NavigatorState get navigator =>
      read<GlobalKey<NavigatorState>>().currentState;

  VoidCallback _removeListener;

  void pop() => navigator.pop();

  @override
  void dispose() {
    _removeListener();
  }
}
