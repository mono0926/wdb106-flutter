// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'item_stocks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Item _$ItemFromJson(Map<String, dynamic> json) => _Item(
  id: json['id'] as String,
  price: (json['price'] as num).toInt(),
  title: json['title'] as String,
  imageUrl: json['imageUrl'] as String,
);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'title': instance.title,
  'imageUrl': instance.imageUrl,
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(itemStocks)
const itemStocksProvider = ItemStocksProvider._();

final class ItemStocksProvider
    extends
        $FunctionalProvider<
          AsyncValue<ItemStocks>,
          ItemStocks,
          FutureOr<ItemStocks>
        >
    with $FutureModifier<ItemStocks>, $FutureProvider<ItemStocks> {
  const ItemStocksProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'itemStocksProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$itemStocksHash();

  @$internal
  @override
  $FutureProviderElement<ItemStocks> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ItemStocks> create(Ref ref) {
    return itemStocks(ref);
  }
}

String _$itemStocksHash() => r'8f7d171ed6d2b77eb4796bc8ec5149730f81b26f';
