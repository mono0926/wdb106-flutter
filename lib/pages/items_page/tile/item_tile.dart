import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile_controller.dart';
import 'package:wdb106_sample/widgets/widgets.dart';

final itemTileProvider =
    StateNotifierProviderFamily<ItemTileController, ItemStock>(
  (ref, stock) => ItemTileController(
    ref,
    stock: stock,
  ),
);

class ItemTile extends HookWidget {
  const ItemTile._({
    Key key,
    @required this.stock,
  }) : super(key: key);

  static Widget wrapped(ItemStock stock) {
    return ProviderScope(
      child: ItemTile._(stock: stock),
    );
  }

  static const _indent = 16.0;

  final ItemStock stock;

  @override
  Widget build(BuildContext context) {
    final item = stock.item;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: _indent),
          height: 96,
          child: Row(
            children: [
              ItemImage(imageUrl: item.imageUrl),
              const SizedBox(width: 8),
              _buildItemInfo(context),
              _buildButton(context)
            ],
          ),
        ),
        const Divider(indent: _indent),
      ],
    );
  }

  Widget _buildItemInfo(BuildContext context) {
    final item = stock.item;
    final theme = Theme.of(context);
    return ItemInfo(
      title: item.title,
      price: item.priceWithUnit,
      info: Text(
        '在庫 ${useProvider(itemTileProvider(stock).state).quantity}',
        style: theme.textTheme.caption,
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return CupertinoButton(
      child: const Text('追加'),
      onPressed: useProvider(itemTileProvider(stock).state).hasStock
          ? useProvider(itemTileProvider(stock)).addToCart
          : null,
    );
  }
}
