import 'package:meta/meta.dart';
import 'package:wdb106_sample/model/item.dart';

@immutable
class ItemStock {
  final Item item;
  final int quantity;

  const ItemStock({
    @required this.item,
    @required this.quantity,
  });

  ItemStock.fromJSON(Map<String, dynamic> json)
      : item = Item.fromJSON(json),
        quantity = json['quantity'] as int;
}
