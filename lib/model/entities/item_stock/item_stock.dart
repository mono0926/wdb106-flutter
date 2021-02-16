import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../entities.dart';

part 'item_stock.freezed.dart';

@freezed
abstract class ItemStock implements _$ItemStock {
  factory ItemStock({
    required Item item,
    required int quantity,
  }) = _ItemStock;

  ItemStock._();

  // ignore: prefer_constructors_over_static_methods
  static ItemStock fromJson(Map<String, dynamic> json) => ItemStock(
        item: Item.fromJson(json),
        quantity: json['quantity'] as int,
      );
}
