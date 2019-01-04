import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/model.dart';
import '../../../widgets/widgets.dart';
import 'item_tile_bloc_provider.dart';

class ItemTile extends StatelessWidget {
  static Widget withDependencies(ItemStock stock) {
    final item = stock.item;
    return ItemTileBlocProvider(
      key: ValueKey(item.id),
      stock: stock,
      child: ItemTile._(item: item),
    );
  }

  static const _indent = 16.0;

  final Item item;

  const ItemTile._({
    Key key,
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
