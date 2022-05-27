import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    final item = ref.watch(itemsProviders(id))!;
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
              const SizedBox(width: 8),
              ItemInfo(
                title: item.title,
                price: item.priceWithUnit,
                info: Text(
                  '在庫 ${ref.watch(itemQuantityProviders(id))}',
                  style: theme.textTheme.caption,
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
    return CupertinoButton(
      onPressed: ref.watch(hasStockProviders(id))
          ? () => ref.read(cartMapProvider.notifier).add(id)
          : null,
      child: const Text('追加'),
    );
  }
}
