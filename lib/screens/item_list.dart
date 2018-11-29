import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/bloc/items_bloc_provider.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:wdb106_sample/screens/cart_items.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ItemsBlocProvider.of(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('商品リスト'),
        leading: _buildCartButton(bloc),
      ),
      body: _buildItems(bloc),
    );
  }

  Widget _buildItems(ItemsBloc bloc) => StreamBuilder<List<Item>>(
        stream: bloc.items,
        builder: (context, snap) {
          if (!snap.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: snap.data
                .map(
                  (item) => ItemCell(
                        model: ItemCellModel(
                          item: item,
                          onPressed: item.inventory <= 0
                              ? null
                              : () {
                                  final bloc = ItemsBlocProvider.of(context);
                                  bloc.addition.add(item);
                                },
                          infoLabel: '在庫 ${item.inventory}',
                          buttonLabel: '追加',
                          buttonColor: null,
                        ),
                        key: Key(item.id.toString()),
                      ),
                )
                .toList(),
          );
        },
      );

  Widget _buildCartButton(ItemsBloc bloc) => StreamBuilder<CartSummary>(
        stream: bloc.cartSummary,
        builder: (context, snap) {
          if (!snap.hasData) {
            return CupertinoButton(
              padding: EdgeInsets.zero,
              child: Text('-'),
              onPressed: null,
            );
          }
          return CupertinoButton(
            onPressed: snap.data.totalPrice == 0
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
              snap.data.state,
            ),
          );
        },
      );
}
