import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

import 'cart_button.dart';
import 'tile/item_tile.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('商品リスト'),
        leading: CartButton(),
      ),
      body: _ListView(),
    );
  }
}

class _ListView extends ConsumerWidget {
  const _ListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(itemsProvider.select((s) => s.isLoading));
    final ids = ref
        .watch(itemsProvider.select((s) => s.stocks.map((s) => s.item.id)))
        .toList();
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: ids.length,
            itemBuilder: (_, index) => ItemTile(id: ids[index]),
          );
  }
}
