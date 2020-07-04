import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile_controller.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

final itemTileProviders =
    AutoDisposeStateNotifierProviderFamily<ItemTileController, int>(
        (ref, id) => ItemTileController(
              ref,
              id: id,
            ));

class ItemTile extends HookWidget {
  const ItemTile({
    Key key,
    @required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    const indent = 16.0;
    final item = useProvider(itemTileProviders(id)).stock.item;
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
                  '在庫 ${useProvider(itemTileProviders(id).state).quantity}',
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
    Key key,
    @required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(itemTileProviders(id));
    final hasStock =
        useProvider(itemTileProviders(id).state.select((s) => s.hasStock));
    return CupertinoButton(
      child: const Text('追加'),
      onPressed: hasStock ? controller.addToCart : null,
    );
  }
}
