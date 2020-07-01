// TODO(mono): アニメーション
import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:wdb106_sample/main.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'cart_header.dart';
import 'cart_items.dart';

// TODO(mono): DisposableProvider作りたい
// ignore: top_level_function_literal_block
final provider = AutoDisposeProvider((ref) {
  final c = _Controller(ref);
  ref.onDispose(c.dispose);
  return c;
});

class CartPage extends HookWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('カート'),
        leading: NavigationBarButton(
          text: '閉じる',
          onPressed: useProvider(provider).pop,
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
  _Controller(this._ref) {
    // TODO(mono): addListener不要？
    _removeListener = _ref.read(cartProvider).addListener((state) {
      if (state.summary.totalPrice <= 0) {
        pop();
      }
    });
  }
  final ProviderReference _ref;

  VoidCallback _removeListener;

  void pop() => _ref.read(navigatorKeyProvider).currentState.pop();

  @override
  void dispose() {
    _removeListener();
  }
}
