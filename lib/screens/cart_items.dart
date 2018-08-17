import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_provider.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class CartItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ItemsProvider.of(context);
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('カート'),
          leading: CupertinoButton(
            child: Text('閉じる'),
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 55.0,
              color: Colors.grey[300],
              child: Center(
                child: StreamBuilder<int>(
                  initialData: 0,
                  stream: bloc.totalPrice,
                  builder: (context, snap) => Text(
                        '合計金額 ${snap.data}円+税',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder<Map<Item, int>>(
                stream: bloc.cartItems,
                builder: (context, snap) {
                  switch (snap.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());
                    case ConnectionState.active:
                    case ConnectionState.done:
                      return ListView(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          children: snap.data.entries
                              .map(
                                (entry) => ItemCell(
                                      item: entry.key,
                                      type: ItemCellType.remove,
                                      key: Key(entry.key.id.toString()),
                                    ),
                              )
                              .toList());
                  }
                },
              ),
            ),
          ],
        ));
  }
}
