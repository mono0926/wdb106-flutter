import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/item.dart';

class CartItem {
  final Item item;
  int quantity;

  CartItem({
    @required this.item,
    this.quantity = 0,
  });

  void increase() => quantity++;

  void decrease() => quantity--;
}
