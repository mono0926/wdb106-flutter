import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/bloc/items_provider.dart';
import 'package:wdb106_sample/screens/cart_items.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ItemsProvider.of(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('商品リスト'),
        leading: buildCartButton(bloc),
      ),
      body: buildItems(bloc),
    );
  }

  StreamBuilder<List<ItemHolder>> buildItems(ItemsBloc bloc) =>
      StreamBuilder<List<ItemHolder>>(
        stream: bloc.items,
        builder: (context, snap) {
          if (!snap.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              children: snap.data
                  .map(
                    (itemHolder) => ItemCell(
                          model: ItemCellModelAdd(
                            itemHolder: itemHolder,
                            onPressed: itemHolder.remainCount <= 0
                                ? null
                                : () {
                                    final bloc = ItemsProvider.of(context);
                                    bloc.addition.add(
                                      ItemsAdditionRequest(
                                          item: itemHolder.item),
                                    );
                                  },
                          ),
                          key: Key(itemHolder.item.id.toString()),
                        ),
                  )
                  .toList());
        },
      );

  StreamBuilder<CartAmount> buildCartButton(ItemsBloc bloc) =>
      StreamBuilder<CartAmount>(
        stream: bloc.cartAmount,
        builder: (context, snap) {
          if (!snap.hasData) {
            return CupertinoButton(
              padding: EdgeInsets.zero,
              child: Text('-'),
              onPressed: null,
            );
          }
          return CupertinoButton(
              onPressed: snap.data.isEmpty
                  ? null
                  : () {
                      Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => CartItems(),
                              fullscreenDialog: true,
                            ),
                          );
                    },
              padding: EdgeInsets.zero,
              child: Text(
                snap.data.value,
              ));
        },
      );
}
