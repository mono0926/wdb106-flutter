import 'package:meta/meta.dart';

class Item {
  Item({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.imageUrl,
    @required int inventory,
  }) : _inventory = inventory;

  Item.fromJSON(Map<String, dynamic> json)
      : id = json['id'] as int,
        price = json['price'] as int,
        title = json['title'] as String,
        imageUrl = json['imageUrl'] as String,
        _inventory = json['inventory'] as int;

  final int id;
  final int price;
  final String title;
  final String imageUrl;
  int _inventory;

  int get inventory => _inventory;

  String get priceWithUnit => '$price円+税';

  void increase() => _inventory++;

  void decrease() => _inventory--;
}
