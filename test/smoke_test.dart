import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';

import 'package:wdb106_sample/main.dart';
import 'package:wdb106_sample/model/api.dart';

void main() {
  testWidgets('Smoke test', (tester) async {
    await tester.pumpWidget(App(
      itemsBloc: ItemsBloc(
        client: DummyApiClient(dummyDelay: Duration.zero),
      ),
    ));
    expect(find.text('商品リスト'), findsOneWidget);
    expect(find.text('(　´･‿･｀)'), findsNothing);
  });
}
