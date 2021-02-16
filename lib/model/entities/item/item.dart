import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class Item with _$Item {
  factory Item({
    required int id,
    required int price,
    required String title,
    required String imageUrl,
  }) = _Item;
  Item._();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  late final priceWithUnit = '$price円+税';
}
