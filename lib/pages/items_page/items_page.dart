import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'item_tile.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('商品リスト'),
        leading: _CartButton(),
      ),
      body: _ListView(),
    );
  }
}

class _ListView extends ConsumerWidget {
  const _ListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idsAsync = ref.watch(itemIdsProvider);
    final ids = idsAsync.data?.value;
    return ids == null
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: ids.length,
            itemBuilder: (_, index) => ItemTile(id: ids[index]),
          );
  }
}

class _CartButton extends ConsumerWidget {
  const _CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEmpty = ref.watch(cartEmptyProvider);
    return NavigationBarButton(
      text: ref.watch(cartSummaryProvider.select((s) => s.state)),
      onPressed: isEmpty
          ? null
          : () => Navigator.of(context).push<void>(
                CupertinoPageRoute<void>(
                  builder: (context) => const CartPage(),
                  fullscreenDialog: true,
                ),
              ),
    );
  }
}
