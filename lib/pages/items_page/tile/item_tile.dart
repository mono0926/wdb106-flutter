import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile_controller.dart';
import 'package:wdb106_sample/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {
  const ItemTile._({
    Key key,
    @required this.item,
  }) : super(key: key);

  static Widget wrapped(ItemStock stock) {
    final item = stock.item;
    return StateNotifierProvider<ItemTileController, ItemTileState>(
      create: (context) => ItemTileController(stock: stock)..initialize(),
      child: ItemTile._(item: item),
    );
  }

  static const _indent = 16.0;

  final Item item;

  @override
  Widget build(BuildContext context) {
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
    final theme = Theme.of(context);
    return ItemInfo(
      title: item.title,
      price: item.priceWithUnit,
      info: Text(
        '在庫 ${context.select((ItemTileState s) => s.quantity)}',
        style: theme.textTheme.caption,
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    final controller = context.watch<ItemTileController>();
    final hasStock = context.select((ItemTileState s) => s.hasStock);
    return CupertinoButton(
      child: const Text('追加'),
      onPressed: hasStock ? controller.addToCart : null,
    );
  }
}
