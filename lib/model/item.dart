import 'package:meta/meta.dart';

class Item {
  Item({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.imageUrl,
    @required this.inventory,
    this.addedToCart = 0,
  });

  final int id;
  final int price;
  final String title;
  final String imageUrl;
  final int inventory;
  var addedToCart = 0;

  int get remainCount => inventory - addedToCart;
}
