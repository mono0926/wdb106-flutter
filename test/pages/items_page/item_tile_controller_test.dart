import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile_controller.dart';

import '../../helper/fake_api_client.dart';

void main() {
  ProviderStateOwner owner;
  ProviderReference ref;
  final stock = ItemStock(
    item: Item(
      id: 1,
      title: 'test',
      price: 101,
      imageUrl: 'http://example.com',
    ),
    quantity: 1,
  );
  setUp(() async {
    owner = ProviderStateOwner(
      overrides: [
        apiClientProvider.overrideAs(
          Provider((ref) => FakeApiClient(items: [stock])),
        ),
      ],
    );
    ref = owner.ref;
    // Wait for items loaded
    final itemsController = ref.read(itemsProvider);
    final completer = Completer<void>();
    itemsController.addListener((state) {
      if (!state.isLoading) {
        completer.complete();
      }
    });
    await completer.future;
  });
  test('ItemTileController test', () async {
    final target = ItemTileController(ref, id: stock.item.id);
    expect(target.debugState.quantity, 1);
    expect(target.debugState.hasStock, isTrue);

    target.addToCart();

    expect(target.debugState.quantity, 0);
    expect(target.debugState.hasStock, isFalse);
  });
}
