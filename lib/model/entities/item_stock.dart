import 'entities.dart';

@immutable
class ItemStock {
  const ItemStock({
    @required this.item,
    @required this.quantity,
  });

  ItemStock.fromJson(Map<String, dynamic> json)
      : item = Item.fromJson(json),
        quantity = json['quantity'] as int;

  final Item item;
  final int quantity;
}
