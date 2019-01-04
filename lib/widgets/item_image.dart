import 'package:flutter/widgets.dart';

class ItemImage extends StatelessWidget {
  final String imageUrl;

  const ItemImage({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
