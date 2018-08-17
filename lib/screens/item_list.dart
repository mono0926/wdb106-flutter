import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_provider.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:wdb106_sample/screens/cart_items.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ItemsProvider.of(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('商品リスト'),
        leading: StreamBuilder<Map<Item, int>>(
          stream: bloc.cartItems,
          builder: (context, snap) {
            if (!snap.hasData || snap.data.isEmpty) {
              return CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text('カート(-)'),
                onPressed: null,
              );
            }
            return CupertinoButton(
                onPressed: () {
                  Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => CartItems(),
                          fullscreenDialog: true,
                        ),
                      );
                },
                padding: EdgeInsets.zero,
                child: Text(
                  'カート(${snap.data.values.reduce((s, e) => s + e)})',
                ));
          },
        ),
      ),
      body: StreamBuilder<List<Item>>(
        stream: bloc.items,
        builder: (context, snap) {
          switch (snap.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.active:
            case ConnectionState.done:
              return ListView(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  children: snap.data
                      .map(
                        (item) => ItemCell(
                              item: item,
                              type: ItemCellType.add,
                              key: Key(item.id.toString()),
                            ),
                      )
                      .toList());
          }
        },
      ),
    );
  }
}
