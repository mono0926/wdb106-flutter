import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/router/router.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'item_tile.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

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
    final ids = ref.watch(itemStocksProvider.select((s) => s.value?.itemIds));
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
  const _CartButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationBarButton(
      text: ref.watch(
        cartProvider.select((s) => 'カート(${s.totalQuantity})'),
      ),
      onPressed: ref.watch(cartProvider.select((s) => s.isEmpty))
          ? null
          : () => const CartRoute().go(context),
    );
  }
}
