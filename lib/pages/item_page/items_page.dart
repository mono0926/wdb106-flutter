import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wdb106_sample/pages/cart_page/cart_bloc_provider.dart';
import 'package:wdb106_sample/pages/cart_page/cart_page.dart';
import 'package:wdb106_sample/pages/item_page/item_tile.dart';
import 'package:wdb106_sample/pages/item_page/item_tile_bloc_provider.dart';
import 'package:wdb106_sample/pages/item_page/items_bloc.dart';
import 'package:wdb106_sample/pages/item_page/items_bloc_provider.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage();

  static Widget withDependencies() {
    return ItemsBlocProvider(
      child: CartBlocProvider(
        child: const ItemsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = ItemsBlocProvider.of(context);
    final cartBloc = CartBlocProvider.of(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('商品リスト'),
        leading: _buildCartButton(cartBloc),
      ),
      body: _buildItems(bloc),
    );
  }

  Widget _buildCartButton(CartBloc bloc) {
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
                      builder: (context) {
                        return CartBlocProvider(child: const CartPage());
                      },
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
    return StreamBuilder<List<ItemStock>>(
      initialData: bloc.items.value,
      stream: bloc.items,
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: snap.data.map(
            (stock) {
              final item = stock.item;
              return ItemTileBlocProvider(
                stock: stock,
                child: ItemTile(key: ValueKey(item.id), item: stock.item),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
