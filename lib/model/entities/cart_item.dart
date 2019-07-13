import 'entities.dart';

@immutable
class CartItem {
  const CartItem({
    @required this.item,
    @required this.quantity,
  });

  final Item item;
  final int quantity;

  CartItem increased() => _copyWith(quantity: quantity + 1);

  CartItem decreased() => _copyWith(quantity: quantity - 1);

  CartItem _copyWith({int quantity}) {
    return CartItem(item: item, quantity: quantity);
  }
}
