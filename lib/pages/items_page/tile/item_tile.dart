import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:wdb106_sample/model/item_stock.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile_bloc_provider.dart';
import 'package:wdb106_sample/widgets/item_image.dart';
import 'package:wdb106_sample/widgets/item_info.dart';

class ItemTile extends StatelessWidget {
  static Widget withDependencies(ItemStock stock) {
    final item = stock.item;
    return ItemTileBlocProvider(
      stock: stock,
      child: ItemTile._(key: ValueKey(item.id), item: item),
    );
  }

  static const _indent = 16.0;

  final Item item;

  const ItemTile._({
    @required Key key,
    @required this.item,
  }) : super(key: key);

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
    final bloc = ItemTileBlocProvider.of(context);
    final theme = Theme.of(context);
    return ItemInfo(
      title: item.title,
      price: item.priceWithUnit,
      info: StreamBuilder<int>(
        initialData: bloc.quantity.value,
        stream: bloc.quantity,
        builder: (context, snap) {
          return Text(
            '在庫 ${snap.data}',
            style: theme.textTheme.caption,
          );
        },
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    final bloc = ItemTileBlocProvider.of(context);
    return StreamBuilder<int>(
      initialData: bloc.quantity.value,
      stream: bloc.quantity,
      builder: (context, snap) {
        return CupertinoButton(
          child: const Text('追加'),
          onPressed: snap.data <= 0
              ? null
              : () {
                  bloc.additionToCart.add(null);
                },
        );
      },
    );
  }
}
