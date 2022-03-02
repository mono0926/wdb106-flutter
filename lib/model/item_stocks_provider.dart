import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/util/util.dart';

import 'model.dart';

final itemStocksProvider = FutureProvider((ref) async {
  final result = await ref.watch(httpClientProvider).get(
        Uri.parse(
          'https://run.mocky.io/v3/6ee7295a-065b-4014-9040-db533ad1389c',
        ),
      );
  final json =
      (await jsonDecode(result.body) as List).cast<Map<String, dynamic>>();
  final list = json.map(ItemStock.fromJson).toList();
  return list;
});

final itemStockMapProvider = Provider((ref) {
  final stocks = ref.watch(itemStocksProvider).value ?? [];
  return Map.fromEntries(
    stocks.map((stock) {
      return MapEntry(stock.item.id, stock);
    }),
  );
});

final itemMapProvider = Provider(
  (ref) => ref
      .watch(itemStockMapProvider)
      .map((key, value) => MapEntry(key, value.item)),
);

final itemIdsProvider = Provider(
  (ref) => ref
      .watch(itemStocksProvider)
      .whenData((stocks) => stocks.map((stock) => stock.item.id).toList()),
);

final itemStockProviders =
    Provider.family((ref, String id) => ref.watch(itemStockMapProvider)[id]);

final itemsProviders = Provider.family(
  (ref, String id) => ref.watch(itemStockProviders(id))?.item,
);

final itemQuantityProviders = Provider.family((ref, String id) {
  final stock = ref.watch(itemStockProviders(id));
  if (stock == null) {
    return 0;
  }
  final item = stock.item;
  final cartItemQuantity = ref.watch(cartMapProvider)[item.id] ?? 0;
  return stock.quantity - cartItemQuantity;
});

final hasStockProviders = Provider.family(
  (ref, String id) => ref.watch(itemQuantityProviders(id)) > 0,
);
