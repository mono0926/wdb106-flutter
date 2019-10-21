import 'entities.dart';

@immutable
class Item {
  const Item({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.imageUrl,
  });

  Item.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] as int,
          price: json['price'] as int,
          title: json['title'] as String,
          imageUrl: json['imageUrl'] as String,
        );

  final int id;
  final int price;
  final String title;
  final String imageUrl;

  String get priceWithUnit => '$price円+税';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Item && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
