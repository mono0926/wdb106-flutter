// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'item_quantity.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemQuantityHash() => r'1cef6c2e19aeccd817b99dcc1181f795aa8e4aef';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef ItemQuantityRef = AutoDisposeProviderRef<ItemQuantity>;

/// See also [itemQuantity].
@ProviderFor(itemQuantity)
const itemQuantityProvider = ItemQuantityFamily();

/// See also [itemQuantity].
class ItemQuantityFamily extends Family<ItemQuantity> {
  /// See also [itemQuantity].
  const ItemQuantityFamily();

  /// See also [itemQuantity].
  ItemQuantityProvider call(
    String id,
  ) {
    return ItemQuantityProvider(
      id,
    );
  }

  @override
  ItemQuantityProvider getProviderOverride(
    covariant ItemQuantityProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'itemQuantityProvider';
}

/// See also [itemQuantity].
class ItemQuantityProvider extends AutoDisposeProvider<ItemQuantity> {
  /// See also [itemQuantity].
  ItemQuantityProvider(
    this.id,
  ) : super.internal(
          (ref) => itemQuantity(
            ref,
            id,
          ),
          from: itemQuantityProvider,
          name: r'itemQuantityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemQuantityHash,
          dependencies: ItemQuantityFamily._dependencies,
          allTransitiveDependencies:
              ItemQuantityFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is ItemQuantityProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
