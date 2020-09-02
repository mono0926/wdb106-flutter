// TODO(mono): アニメーション
import 'package:disposable_provider/disposable_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/providers/providers.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'cart_header.dart';
import 'cart_tile.dart';

// TODO(mono): DisposableProvider作りたい
// ignore: top_level_function_literal_block
final provider = Provider.autoDispose((ref) {
  final c = _Controller(ref.read);
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
          Expanded(child: _ListView()),
        ],
      ),
    );
  }
}

class _ListView extends HookWidget {
  const _ListView();
  @override
  Widget build(BuildContext context) {
    final items = useProvider(cartProvider.state.select((s) => s.sortedItems));
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      itemBuilder: (_, index) => CartTile(cartItem: items[index]),
    );
  }
}

class _Controller with Disposable {
  _Controller(this._read) {
    _removeListener = _read(cartProvider).addListener((state) {
      if (state.summary.totalPrice <= 0) {
        pop();
      }
    });
  }
  final Reader _read;

  VoidCallback _removeListener;

  void pop() => _read(navigatorKeyProvider).currentState.pop();

  @override
  void dispose() {
    _removeListener();
  }
}
