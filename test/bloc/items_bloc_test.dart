import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';

import '../helper/fake_api_client.dart';

void main() {
  ItemsBloc target;

  setUp(() {
    target = ItemsBloc(client: FakeApiClient());
  });

  tearDown(() {
    target.dispose();
  });

  test('ItemsBloc test', () async {
    var items = await target.items.first;
    expect(items.length, 2);
    var item = items.first;
    expect(item.inventory, 2);

    var cartItems = await target.cartItems.first;
    expect(cartItems.length, 0);

    var cartSummary = await target.cartSummary.first;
    expect(cartSummary.totalPrice, 0);
    expect(cartSummary.state, 'カート(0)');
    expect(cartSummary.totalPriceState, '合計金額 0円+税');

    target.addition.add(item);

    items = await target.items.first;
    expect(items.length, 2);
    item = items.first;
    expect(item.inventory, 1);

    cartItems = await target.cartItems.first;
    expect(cartItems.length, 1);
    final cartItem = cartItems.first;
    expect(cartItem.quantity, 1);

    cartSummary = await target.cartSummary.first;
    expect(cartSummary.totalPrice, 100);
    expect(cartSummary.state, 'カート(1)');
    expect(cartSummary.totalPriceState, '合計金額 100円+税');

    target.deletion.add(item);

    items = await target.items.first;
    expect(items.length, 2);
    item = items.first;
    expect(item.inventory, 2);

    cartItems = await target.cartItems.first;
    expect(cartItems.length, 0);

    cartSummary = await target.cartSummary.first;
    expect(cartSummary.totalPrice, 0);
    expect(cartSummary.state, 'カート(0)');
    expect(cartSummary.totalPriceState, '合計金額 0円+税');
  });
}
