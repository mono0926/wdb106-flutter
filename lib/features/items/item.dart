import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:wdb106_sample/util/util.dart';

part 'item.freezed.dart';
part 'item.g.dart';

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
