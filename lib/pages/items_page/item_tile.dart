import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

class ItemTile extends ConsumerWidget {
  ItemTile({
    required this.id,
  }) : super(key: ValueKey(id));

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const indent = 16.0;
    final item = ref.watch(
      itemStocksProvider.select((s) => s.value!.item(id)),
    )!;
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
              _AddButton(id: id),
            ],
          ),
        ),
        const Divider(indent: indent),
      ],
    );
  }
}

class _AddButton extends ConsumerWidget {
  const _AddButton({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasStock = ref.watch(
      itemQuantityProvider(id).select((s) => s.hasStock),
    );
    return CupertinoButton(
      onPressed:
          hasStock ? () => ref.read(cartProvider.notifier).add(id) : null,
      child: const Text('追加'),
    );
  }
}
