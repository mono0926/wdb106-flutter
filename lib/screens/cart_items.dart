import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/bloc/items_provider.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  StreamSubscription _streamSubscription;

  @override
  Widget build(BuildContext context) => _CartItems();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final bloc = ItemsProvider.of(context);
    _streamSubscription = bloc.totalPrice.listen((data) {
      if (data.price <= 0) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}

class _CartItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ItemsProvider.of(context);
    return Scaffold(
        appBar: buildNavigationBar(context),
        body: Column(
          children: <Widget>[
            _buildHeader(bloc),
            buildItems(bloc),
          ],
        ));
  }

  Expanded buildItems(ItemsBloc bloc) => Expanded(
        child: StreamBuilder<List<ItemHolder>>(
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
                    children: snap.data
                        .map(
                          (itemHolder) => ItemCell(
                                model: ItemCellModelRemove(
                                  itemHolder: itemHolder,
                                  onPressed: () {
                                    final bloc = ItemsProvider.of(context);
                                    bloc.remove.add(
                                      ItemsRemoveRequest(item: itemHolder.item),
                                    );
                                  },
                                ),
                                key: Key(itemHolder.item.id.toString()),
                              ),
                        )
                        .toList());
            }
          },
        ),
      );

  Container _buildHeader(ItemsBloc bloc) => Container(
        height: 55.0,
        color: Colors.grey[300],
        child: Center(
          child: StreamBuilder<TotalPrice>(
            stream: bloc.totalPrice,
            builder: (context, snap) {
              if (!snap.hasData) {
                return Text('-');
              }
              return Text(
                snap.data.value,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              );
            },
          ),
        ),
      );

  CupertinoNavigationBar buildNavigationBar(BuildContext context) =>
      CupertinoNavigationBar(
        middle: Text('カート'),
        leading: CupertinoButton(
          child: Text('閉じる'),
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      );
}
