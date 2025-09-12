// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'item_quantity.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(itemQuantity)
const itemQuantityProvider = ItemQuantityFamily._();

final class ItemQuantityProvider
    extends $FunctionalProvider<ItemQuantity, ItemQuantity, ItemQuantity>
    with $Provider<ItemQuantity> {
  const ItemQuantityProvider._({
    required ItemQuantityFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'itemQuantityProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$itemQuantityHash();

  @override
  String toString() {
    return r'itemQuantityProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ItemQuantity> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ItemQuantity create(Ref ref) {
    final argument = this.argument as String;
    return itemQuantity(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ItemQuantity value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ItemQuantity>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemQuantityProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemQuantityHash() => r'51daaf3c4c364f348e09c490fe3d3a206e8cec9a';

final class ItemQuantityFamily extends $Family
    with $FunctionalFamilyOverride<ItemQuantity, String> {
  const ItemQuantityFamily._()
    : super(
        retry: null,
        name: r'itemQuantityProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ItemQuantityProvider call(String id) =>
      ItemQuantityProvider._(argument: id, from: this);

  @override
  String toString() => r'itemQuantityProvider';
}
