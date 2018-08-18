import 'package:meta/meta.dart';

class Item {
  Item({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.imageUrl,
    this.inventory = 5,
  });

  final int id;
  final int price;
  final String title;
  final String imageUrl;
  int inventory;

  void increase() => inventory++;

  void decrease() => inventory--;
}
