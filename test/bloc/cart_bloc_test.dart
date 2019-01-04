import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/common/cart_bloc.dart';

void main() {
  CartStore cartStore;
  CartBloc target;

  setUp(() {
    cartStore = CartStore();
    target = CartBloc(cartStore: cartStore);
  });

  tearDown(() {
    target.dispose();
  });

  test('ItemsBloc test', () async {
    target.cartSummary.listen((_) {});

    var cartItems = target.cartItems.value;
    expect(cartItems.isEmpty, true);

    var cartSummary = target.cartSummary.value;
    expect(cartSummary.totalPrice, 0);
    expect(cartSummary.state, 'カート(0)');
    expect(cartSummary.totalPriceState, '合計金額 0円+税');

    const item1 = Item(
      id: 1,
      title: 'title',
      imageUrl: 'imageUrl',
      price: 100,
    );
    const item2 = Item(
      id: 2,
      title: 'title2',
      imageUrl: 'imageUrl2',
      price: 300,
    );

    cartStore..add(item1)..add(item1)..add(item2);

    cartItems = target.cartItems.value;
    expect(cartItems.length, 2);
    var cartItem = cartItems.first;
    expect(cartItem.quantity, 2);

    await Future.delayed(Duration(milliseconds: 1));

    cartSummary = target.cartSummary.value;
    expect(cartSummary.totalPrice, 500);
    expect(cartSummary.state, 'カート(3)');
    expect(cartSummary.totalPriceState, '合計金額 500円+税');

    target.deletion.add(item1);

    cartItems = await target.cartItems.skip(1).first;
    expect(cartItems.length, 2);
    cartItem = cartItems.first;
    expect(cartItem.quantity, 1);
    expect(cartItem.item, item1);

    target.deletion.add(item1);

    cartItems = await target.cartItems.skip(1).first;
    expect(cartItems.length, 1);
    cartItem = cartItems.first;
    expect(cartItem.quantity, 1);
    expect(cartItem.item, item2);

    await Future.delayed(Duration(milliseconds: 1));

    cartSummary = target.cartSummary.value;
    expect(cartSummary.totalPrice, 300);
    expect(cartSummary.state, 'カート(1)');
    expect(cartSummary.totalPriceState, '合計金額 300円+税');
  });
}
