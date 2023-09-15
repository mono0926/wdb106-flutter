import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:wdb106_sample/features/items/items.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

import 'cart.dart';

class CartTile extends ConsumerWidget {
  CartTile({
    required this.id,
  }) : super(key: ValueKey(id));

  final String id;

  static const _indent = 16.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final item =
        ref.watch(itemStocksProvider.select((s) => s.value!.item(id)))!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: _indent),
          height: 96,
          child: Row(
            children: [
              ItemImage(imageUrl: item.imageUrl),
              const Gap(8),
              ItemInfo(
                title: item.title,
                price: item.priceLabel,
                info: Text(
                  '数量 ${ref.watch(cartProvider.select((s) => s.quantity(id)))}',
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  ref.read(cartProvider.notifier).delete(item.id);
                },
                child: Text(
                  '削除',
                  style: TextStyle(
                    color: colorScheme.error,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(indent: _indent),
      ],
    );
  }
}
