import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/items_page/tile/item_tile.dart';

void main() {
  late ProviderContainer container;
  ProviderRefBase ref;
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
    container = ProviderContainer(
      overrides: [
        itemsFetcher.overrideWithValue(AsyncValue.data([stock])),
      ],
    );
    final provider = Provider((ref) => ref);
    ref = container.read(provider);
    // Wait for items loaded
    final itemsController = ref.read(itemsProvider.notifier);
    await expectLater(
      itemsController.stream.map((s) => s.isLoading).first,
      completion(false),
    );
  });
  test('ItemTileController test', () async {
    final target = container.read(itemTileProviders(stock.item.id).notifier);
    expect(target.debugState.quantity, 1);
    expect(target.debugState.hasStock, isTrue);

    target.addToCart();

    expect(target.debugState.quantity, 0);
    expect(target.debugState.hasStock, isFalse);
  });
}
