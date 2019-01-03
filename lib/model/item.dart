import 'package:meta/meta.dart';

@immutable
class Item {
  const Item(
      {@required this.id,
      @required this.price,
      @required this.title,
      @required this.imageUrl});

  Item.fromJSON(Map<String, dynamic> json)
      : id = json['id'] as int,
        price = json['price'] as int,
        title = json['title'] as String,
        imageUrl = json['imageUrl'] as String;

  final int id;
  final int price;
  final String title;
  final String imageUrl;

  String get priceWithUnit => '$price円+税';
}
