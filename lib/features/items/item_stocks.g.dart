// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'item_stocks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemStocksHash() => r'd99101d218dde6f2da2ff95a46df171c52ef198f';

/// See also [itemStocks].
@ProviderFor(itemStocks)
final itemStocksProvider = AutoDisposeFutureProvider<ItemStocks>.internal(
  itemStocks,
  name: r'itemStocksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemStocksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ItemStocksRef = AutoDisposeFutureProviderRef<ItemStocks>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
