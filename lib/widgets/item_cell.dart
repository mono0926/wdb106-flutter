import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';

abstract class ItemCellModel {
  final ItemHolder itemHolder = null;
  final VoidCallback onPressed = null;

  String get label;

  String get button;

  Color buttonColor(BuildContext context);
}

class ItemCellModelAdd implements ItemCellModel {
  @override
  final ItemHolder itemHolder;
  @override
  final VoidCallback onPressed;

  ItemCellModelAdd({
    this.itemHolder,
    this.onPressed,
  });

  @override
  String get button => '追加';

  @override
  String get label => '在庫 ${itemHolder.remainCount}';

  @override
  Color buttonColor(BuildContext context) => null;
}

class ItemCellModelRemove implements ItemCellModel {
  @override
  final ItemHolder itemHolder;
  @override
  final VoidCallback onPressed;

  ItemCellModelRemove({
    this.itemHolder,
    this.onPressed,
  });

  @override
  String get button => '削除';

  @override
  String get label => '数量 ${itemHolder.addedToCart}';

  @override
  Color buttonColor(BuildContext context) => Theme.of(context).errorColor;
}

class ItemCell extends StatelessWidget {
  final ItemCellModel model;

  const ItemCell({
    @required this.model,
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
                  model.itemHolder.item.imageUrl,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(model.itemHolder.item.title,
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                      SizedBox(height: 8.0),
                      Text('${model.itemHolder.item.price}円+税',
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                      SizedBox(height: 8.0),
                      Text(
                        model.label,
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                CupertinoButton(
                  child: Text(
                    model.button,
                    style: TextStyle(color: model.buttonColor(context)),
                  ),
                  onPressed: model.onPressed,
                )
              ],
            ),
          ),
          Divider(
            indent: 16.0,
          ),
        ],
      );
}
