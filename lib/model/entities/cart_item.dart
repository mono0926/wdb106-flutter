import 'entities.dart';

@immutable
class CartItem {
  final Item item;
  final int quantity;

  const CartItem({
    @required this.item,
    @required this.quantity,
  });

  CartItem increased() => _copyWith(quantity: quantity + 1);

  CartItem decreased() => _copyWith(quantity: quantity - 1);

  CartItem _copyWith({int quantity}) {
    return CartItem(item: item, quantity: quantity);
  }
}
