import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/common/cart_controller/cart_controller.dart';

void main() {
  CartStore cartStore;
  CartController target;

  setUp(() {
    cartStore = CartStore();
    target = CartController(cartStore: cartStore);
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

    cartSummary = await target.cartSummary
        .firstWhere((s) => s.totalPrice == 500)
        .timeout(const Duration(milliseconds: 1));
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

    cartSummary = await target.cartSummary
        .firstWhere((s) => s.totalPrice == 300)
        .timeout(const Duration(milliseconds: 1));
    expect(cartSummary.state, 'カート(1)');
    expect(cartSummary.totalPriceState, '合計金額 300円+税');
  });
}
