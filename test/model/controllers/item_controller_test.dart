import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';

import '../../helper/fake_api_client.dart';

void main() {
  ItemsController target;
  final item = ItemStock(
    item: Item(
      id: 1,
      title: 'test',
      price: 101,
      imageUrl: 'http://example.com',
    ),
    quantity: 1,
  );

  setUp(() {
    final owner = ProviderStateOwner(
      overrides: [
        apiClientProvider.overrideAs(
          Provider((ref) => FakeApiClient(items: [item])),
        ),
      ],
    );
    target = ItemsController(owner.ref);
  });
  test('ItemsController test', () async {
    final stocks = target.debugState.stocks;
    expect(stocks.length, 1);
    expect(stocks.first.quantity, 1);
  });
}
