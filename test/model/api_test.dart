import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/model/api.dart';

void main() {
  test('api test', () async {
    final target = DummyApiClient(dummyDelay: Duration.zero);
    final items = await target.getItems();
    expect(items.length, 5);
    final item = items.first;
    expect(item.id, 100);
    expect(item.price, 1480);
    expect(item.title, 'WEB+DB PRESS 100');
    expect(item.imageUrl,
        'https://gihyo.jp/assets/images/gdp/2017/978-4-7741-9229-1.jpg');
    expect(item.inventory, 5);
  });
}
