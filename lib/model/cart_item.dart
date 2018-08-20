import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/item.dart';

export 'item.dart';

class CartItem {
  CartItem({
    @required this.item,
    int quantity = 0,
  }) : _quantity = quantity;

  final Item item;
  int _quantity;

  int get quantity => _quantity;

  void increase() => _quantity++;

  void decrease() => _quantity--;
}
