import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:wdb106_sample/pages/item_page/item_tile_bloc_provider.dart';

class ItemTile extends StatelessWidget {
  static const _indent = 16.0;
  static const _verticalMargin = SizedBox(height: 8.0);
  static const _horizontalMargin = SizedBox(width: 8.0);
  static const _textStyleMain = TextStyle(fontSize: 18.0);

  TextStyle get _textStyleSub => TextStyle(
        fontSize: 13.0,
        color: Colors.grey[600],
      );

  final Item item;

  const ItemTile({
    @required Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildBody(context),
        const Divider(indent: _indent),
      ],
    );
  }

  // TODO: 別Widgetに
  Widget _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: _indent),
      height: 96.0,
      child: Row(
        children: [
          _buildImage(),
          _horizontalMargin,
          _buildItemInfo(context),
          _buildButton(context)
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.network(
      item.imageUrl,
      fit: BoxFit.cover,
    );
  }

  Widget _buildItemInfo(BuildContext context) {
    final bloc = ItemTileBlocProvider.of(context);
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: _textStyleMain,
          ),
          _verticalMargin,
          Text(
            item.priceWithUnit,
            style: _textStyleMain,
          ),
          _verticalMargin,
          StreamBuilder<int>(
              initialData: bloc.quantity.value,
              stream: bloc.quantity,
              builder: (context, snap) {
                return Text(
                  '在庫 ${snap.data}',
                  style: _textStyleSub,
                );
              }),
        ],
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
