import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:wdb106_sample/model/item_store.dart';

void main() {
  ItemsBloc target;

  setUp(() {
    target = ItemsBloc(client: DummyApiClient(dummyDelay: Duration.zero));
  });

  tearDown(() {
    target.dispose();
  });

  test('ItemsBloc test', () async {
    var items = await target.items.first;
    expect(items.length, 5);
    var item = items.first;
    expect(item.inventory, 5);

    var cartItems = await target.cartItems.first;
    expect(cartItems.length, 0);

    var cartSummary = await target.cartSummary.first;
    expect(cartSummary.totalPrice, 0);
    expect(cartSummary.state, 'カート(0)');
    expect(cartSummary.totalPriceState, '合計金額 0円+税');

    target.addition.add(item);

    items = await target.items.first;
    expect(items.length, 5);
    item = items.first;
    expect(item.inventory, 4);

    cartItems = await target.cartItems.first;
    expect(cartItems.length, 1);
    var cartItem = cartItems.first;
    expect(cartItem.quantity, 1);

    cartSummary = await target.cartSummary.first;
    expect(cartSummary.totalPrice, 1480);
    expect(cartSummary.state, 'カート(1)');
    expect(cartSummary.totalPriceState, '合計金額 1480円+税');

    target.deletion.add(item);

    items = await target.items.first;
    expect(items.length, 5);
    item = items.first;
    expect(item.inventory, 5);

    cartItems = await target.cartItems.first;
    expect(cartItems.length, 0);

    cartSummary = await target.cartSummary.first;
    expect(cartSummary.totalPrice, 0);
    expect(cartSummary.state, 'カート(0)');
    expect(cartSummary.totalPriceState, '合計金額 0円+税');
  });
}
