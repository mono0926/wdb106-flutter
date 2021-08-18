import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import 'model.dart';

final _client = Client();

final itemStocksProvider = FutureProvider((ref) async {
  final result = await _client.get(
    Uri.parse('https://run.mocky.io/v3/6ee7295a-065b-4014-9040-db533ad1389c'),
  );
  final json =
      (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
  final list = json.map(ItemStock.fromJson).toList();
  return list;
});

final itemStockMapProvider =
    Provider((ref) => ref.watch(itemStocksProvider).whenData((stocks) {
          return Map.fromEntries(stocks.map((stock) {
            return MapEntry(stock.item.id, stock);
          }));
        }));

final itemMapProvider =
    Provider((ref) => ref.watch(itemStockMapProvider).whenData(
          (stockMap) => stockMap.map((key, value) => MapEntry(key, value.item)),
        ));

final itemIdsProvider = Provider(
  (ref) => ref
      .watch(itemStocksProvider)
      .whenData((stocks) => stocks.map((stock) => stock.item.id).toList()),
);

final itemStockProviders = Provider.family<AsyncValue<ItemStock>, String>(
    (ref, id) => ref.watch(itemStockMapProvider).whenData(
          (map) => map[id]!,
        ));

final itemsProviders = Provider.family<AsyncValue<Item>, String>(
    (ref, id) => ref.watch(itemStockProviders(id)).whenData(
          (stock) => stock.item,
        ));

final itemQuantityProviders = Provider.family<AsyncValue<int>, String>(
    (ref, id) => ref.watch(itemStockProviders(id)).whenData((stock) {
          final item = stock.item;
          final cartItemQuantity =
              ref.watch(cartController).itemMap[item.id] ?? 0;
          return stock.quantity - cartItemQuantity;
        }));

final hasStockProviders = Provider.family<AsyncValue<bool>, String>(
    (ref, id) => ref.watch(itemQuantityProviders(id)).whenData((quantity) {
          return quantity > 0;
        }));
