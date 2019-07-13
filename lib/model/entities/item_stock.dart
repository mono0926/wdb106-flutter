import 'entities.dart';

@immutable
class ItemStock {
  const ItemStock({
    @required this.item,
    @required this.quantity,
  });

  ItemStock.fromJSON(Map<String, dynamic> json)
      : item = Item.fromJSON(json),
        quantity = json['quantity'] as int;

  final Item item;
  final int quantity;
}
