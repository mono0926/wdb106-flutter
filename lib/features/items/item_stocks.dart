import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wdb106_sample/util/util.dart';

part 'item_stocks.freezed.dart';
part 'item_stocks.g.dart';

@riverpod
Future<ItemStocks> itemStocks(Ref ref) async {
  final result = await ref.watch(httpClientProvider).get(
        Uri.parse(
          'https://run.mocky.io/v3/cc1388bf-b198-4cb6-bb9c-7891a8776cb2',
        ),
      );
  final json = (jsonDecode(result.body) as List).cast<JsonMap>();
  return ItemStocks(
    stocks: json.map(ItemStock.fromJson).toList(),
  );
}

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

@freezed
class ItemStock with _$ItemStock {
  factory ItemStock({
    required Item item,
    required int quantity,
  }) = _ItemStock;

  ItemStock._();

  // ignore: prefer_constructors_over_static_methods
  static ItemStock fromJson(JsonMap json) => ItemStock(
        item: Item.fromJson(json),
        quantity: json['quantity'] as int,
      );
}

@freezed
class Item with _$Item {
  factory Item({
    required String id,
    required int price,
    required String title,
    required String imageUrl,
  }) = _Item;
  Item._();

  factory Item.fromJson(JsonMap json) => _$ItemFromJson(json);

  late final priceLabel = formatPrice(price);
  static final _priceFormat = NumberFormat();
  static String formatPrice(int price) => '${_priceFormat.format(price)}円+税';
}
