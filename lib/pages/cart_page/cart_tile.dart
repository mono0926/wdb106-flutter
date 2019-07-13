import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wdb106_sample/pages/common/cart_bloc_provider.dart';

import '../../model/model.dart';
import '../../widgets/widgets.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    @required Key key,
    @required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;
  Item get item => cartItem.item;

  static const _indent = 16.0;

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
        '数量 ${cartItem.quantity}',
        style: theme.textTheme.caption,
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return CupertinoButton(
      child: Text(
        '削除',
        style: TextStyle(
          color: Theme.of(context).errorColor,
        ),
      ),
      onPressed: () {
        final bloc = CartBlocProvider.of(context);
        bloc.deletion.add(item);
      },
    );
  }
}
