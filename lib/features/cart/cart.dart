import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'cart_header.dart';
export 'cart_page.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  CartState build() => CartState();

  void add(String id) => state = state.added(id);
  void delete(String id) => state = state.deleted(id);
}

@freezed
class CartState with _$CartState {
  factory CartState([@Default(<String, int>{}) Map<String, int> map]) =
      _CartState;
  CartState._();

  CartState added(String id) {
    return CartState({
      ...map,
      id: (map[id] ?? 0) + 1,
    });
  }

  CartState deleted(String id) {
    return CartState(
      {
        ...map,
        id: map[id]! - 1,
      }..removeWhere((key, quantity) => quantity <= 0),
    );
  }

  late final itemIds = map.keys.toList()..sort((a, b) => a.compareTo(b));
  late final totalQuantity = map.values.fold<int>(
    0,
    (sum, quantity) {
      return sum + quantity;
    },
  );
  late final isEmpty = totalQuantity <= 0;

  int quantity(String id) => map[id] ?? 0;
}
