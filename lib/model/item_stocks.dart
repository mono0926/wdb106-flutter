import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/util/util.dart';

import 'model.dart';

part 'item_stocks.freezed.dart';

final itemStocksProvider = FutureProvider((ref) async {
  final result = await ref.watch(httpClientProvider).get(
        Uri.parse(
          'https://run.mocky.io/v3/6ee7295a-065b-4014-9040-db533ad1389c',
        ),
      );
  final json = (await jsonDecode(result.body) as List).cast<JsonMap>();
  return ItemStocks(
    stocks: json.map(ItemStock.fromJson).toList(),
  );
});

@freezed
class ItemStocks with _$ItemStocks {
  factory ItemStocks({required List<ItemStock> stocks}) = _ItemStocks;
  ItemStocks._();

  late final map = Map.fromEntries(
    stocks.map((stock) {
      return MapEntry(stock.item.id, stock);
    }),
  );

  late final itemMap = map.map((key, value) => MapEntry(key, value.item));
  late final itemIds = stocks.map((stock) => stock.item.id).toList();
  ItemStock? itemStock(String id) => map[id];
  Item? item(String id) => itemStock(id)?.item;
}

final itemQuantityProviders = Provider.family((ref, String id) {
  return ref.watch(itemStocksProvider).whenData((itemStocks) {
    final stock = itemStocks.itemStock(id);
    if (stock == null) {
      return 0;
    }
    final cartItemQuantity = ref.watch(
      cartProvider.select((s) => s.quantity(id)),
    );
    return stock.quantity - cartItemQuantity;
  });
});

final hasStockProviders = Provider.family(
  (ref, String id) => ref.watch(itemQuantityProviders(id)).whenData(
        (quantity) => quantity > 0,
      ),
);
