import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:wdb106_sample/features/cart/cart.dart';
import 'package:wdb106_sample/router.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'item_image.dart';
import 'item_info.dart';
import 'item_quantity.dart';
import 'item_stocks.dart';

class ItemsPage extends ConsumerWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ids = ref.watch(itemStocksProvider.select((s) => s.value?.itemIds));
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('商品リスト'),
        leading: NavigationBarButton(
          text: ref.watch(
            cartProvider.select((s) => 'カート(${s.totalQuantity})'),
          ),
          onPressed: ref.watch(cartProvider.select((s) => s.isEmpty))
              ? null
              : () => const CartRoute().go(context),
        ),
      ),
      body: ids == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: ids.length,
              itemBuilder: (_, index) => _Tile(id: ids[index]),
            ),
    );
  }
}

class _Tile extends ConsumerWidget {
  _Tile({
    required this.id,
  }) : super(key: ValueKey(id));

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const indent = 16.0;
    final item = ref.watch(
      itemStocksProvider.select((s) => s.value!.item(id)),
    )!;
    final hasStock = ref.watch(
      itemQuantityProvider(id).select((s) => s.hasStock),
    );
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: indent),
          height: 96,
          child: Row(
            children: [
              ItemImage(imageUrl: item.imageUrl),
              const Gap(8),
              ItemInfo(
                title: item.title,
                price: item.priceLabel,
                info: Text(
                  '在庫 ${ref.watch(itemQuantityProvider(id)).quantity}',
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CupertinoButton(
                onPressed: hasStock
                    ? () => ref.read(cartProvider.notifier).add(id)
                    : null,
                child: const Text('追加'),
              ),
            ],
          ),
        ),
        const Divider(indent: indent),
      ],
    );
  }
}
