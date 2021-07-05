// TODO(mono): アニメーション
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/util/logger.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'cart_header.dart';
import 'cart_tile.dart';

final _shouldPop = Provider.autoDispose(
  (ref) => ref.watch(cartProvider.select((s) => s.summary.totalPrice <= 0)),
);

class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    ref.listen<bool>(_shouldPop, (shouldPop) {
      pop();
    });
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('カート'),
        leading: NavigationBarButton(
          text: '閉じる',
          onPressed: pop,
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

class _ListView extends ConsumerWidget {
  const _ListView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(cartProvider.select((s) => s.sortedItems));
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      itemBuilder: (_, index) => CartTile(cartItem: items[index]),
    );
  }
}
