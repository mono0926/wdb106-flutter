import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/bloc/items_provider.dart';
import 'package:wdb106_sample/model/item.dart';

enum ItemCellType {
  add,
  remove,
}

class ItemCell extends StatelessWidget {
  final Item item;
  final ItemCellType type;

  const ItemCell({
    @required this.item,
    @required this.type,
    @required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 96.0,
            child: Row(
              children: <Widget>[
                Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(item.title,
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                      SizedBox(height: 8.0),
                      Text('${item.price}円+税',
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                      SizedBox(height: 8.0),
                      Text(
                        type == ItemCellType.add
                            ? '在庫 ${item.remainCount}'
                            : '数量 ${item.addedToCart}',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                _buildButton(context)
              ],
            ),
          ),
          Divider(
            indent: 16.0,
          ),
        ],
      );

  Widget _buildButton(BuildContext context) {
    switch (type) {
      case ItemCellType.add:
        VoidCallback onPressed;
        if (item.remainCount > 0) {
          onPressed = () {
            final bloc = ItemsProvider.of(context);
            bloc.addition.add(ItemsAdditionRequest(item: item));
          };
        }
        return CupertinoButton(
          child: Text('追加'),
          onPressed: onPressed,
        );
      case ItemCellType.remove:
        return CupertinoButton(
          child: Text(
            '削除',
            style: TextStyle(color: Theme.of(context).errorColor),
          ),
          onPressed: () {
            final bloc = ItemsProvider.of(context);
            bloc.remove.add(ItemsRemoveRequest(item: item));
          },
        );
    }
    assert(false);
    return const SizedBox();
  }
}
