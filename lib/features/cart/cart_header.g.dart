// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'cart_header.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartPrice)
const cartPriceProvider = CartPriceProvider._();

final class CartPriceProvider
    extends $FunctionalProvider<CartPrice, CartPrice, CartPrice>
    with $Provider<CartPrice> {
  const CartPriceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartPriceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartPriceHash();

  @$internal
  @override
  $ProviderElement<CartPrice> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartPrice create(Ref ref) {
    return cartPrice(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartPrice value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartPrice>(value),
    );
  }
}

String _$cartPriceHash() => r'cba2aba83499ab6310ebedae1f01311fd8d931bd';
