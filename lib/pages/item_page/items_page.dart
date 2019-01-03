import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/model/item.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/pages/item_page/items_bloc.dart';
import 'package:wdb106_sample/pages/item_page/items_bloc_provider.dart';
import 'package:wdb106_sample/widgets/item_cell.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage();

  @override
  Widget build(BuildContext context) {
    final bloc = ItemsBlocProvider.of(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('商品リスト'),
        leading: _buildCartButton(bloc),
      ),
      body: _buildItems(bloc),
    );
  }

  Widget _buildCartButton(ItemsBloc bloc) {
    return StreamBuilder<CartSummary>(
      initialData: bloc.cartSummary.value,
      stream: bloc.cartSummary,
      builder: (context, snap) {
        return CupertinoButton(
          onPressed: snap.data.totalPrice == 0
              ? null
              : () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const CartPage(),
                      fullscreenDialog: true,
                    ),
                  );
                },
          padding: EdgeInsets.zero,
          child: Text(snap.data.state),
        );
      },
    );
  }

  Widget _buildItems(ItemsBloc bloc) {
    return StreamBuilder<List<Item>>(
      initialData: bloc.items.value,
      stream: bloc.items,
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: snap.data
              .map(
                (item) => ItemCell(
                      key: Key(item.id.toString()),
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
                    ),
              )
              .toList(),
        );
      },
    );
  }
}
