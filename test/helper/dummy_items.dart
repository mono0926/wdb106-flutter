import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

ItemStocks dummyItemStocks(Ref ref) => ItemStocks(
      stocks: [
        ItemStock(
          quantity: 2,
          item: Item(
            id: '1',
            title: 'test1',
            price: 100,
            imageUrl: 'https://mono0926.com/images/love_logo.png',
          ),
        ),
        ItemStock(
          quantity: 3,
          item: Item(
            id: '2',
            title: 'test2',
            price: 101,
            imageUrl: 'https://mono0926.com/images/love_logo.png',
          ),
        )
      ],
    );
