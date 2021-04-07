import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile_controller.dart';
import 'package:wdb106_sample/util/logger.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

final itemTileProviders = StateNotifierProvider.autoDispose
    .family<ItemTileController, ItemTileState, int>(
        (ref, id) => ItemTileController(
              ref.read,
              id: id,
            ));

class ItemTile extends HookWidget {
  ItemTile({
    required this.id,
  }) : super(key: ValueKey(id));

  final int id;

  @override
  Widget build(BuildContext context) {
    logger.info('build');
    const indent = 16.0;
    final item = useProvider(itemTileProviders(id).notifier).stock.item;
    final quantity = useProvider(
      itemTileProviders(id).select((s) => s.quantity),
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
              const SizedBox(width: 8),
              ItemInfo(
                title: item.title,
                price: item.priceWithUnit,
                info: Text(
                  '在庫 $quantity',
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

class _AddButton extends HookWidget {
  const _AddButton({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(itemTileProviders(id).notifier);
    final hasStock = useProvider(
      itemTileProviders(id).select((s) => s.hasStock),
    );
    return CupertinoButton(
      onPressed: hasStock ? controller.addToCart : null,
      child: const Text('追加'),
    );
  }
}
