import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/model.dart';
import 'package:wdb106_sample/pages/items_page/items_controller/items_controller.dart';

import '../helper/fake_api_client.dart';

void main() {
  ItemsController target;

  setUp(() {
    target = ItemsController(
      client: FakeApiClient(),
      itemStore: ItemStore(),
    );
  });

  tearDown(() {
    target.dispose();
  });

  test('ItemsBloc test', () async {
    final items = target.items.value;
    expect(items.length, 2);
    final item = items.first;
    expect(item.quantity, 2);
  });
}
