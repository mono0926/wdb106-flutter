// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'item_stocks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as String,
      price: (json['price'] as num).toInt(),
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemStocksHash() => r'06ffd101eda675b3ccf73f8b0b953a781c348553';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ItemStocksRef = AutoDisposeFutureProviderRef<ItemStocks>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
