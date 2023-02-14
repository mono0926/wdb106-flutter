// image_test_utilsが非対応で、かつmockitoの追従が難しかったので
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_test_utils/image_test_utils.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wdb106_sample/app.dart';
import 'package:wdb106_sample/model/model.dart';

import 'helper/dummy_items.dart';

void main() {
  setUpAll(() => registerFallbackValue(Uri.parse('')));
  testWidgets('Smoke test', (tester) async {
    await provideMockedNetworkImages(() async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            itemStocksProvider.overrideWith(dummyItemStocks),
          ],
          child: const App(),
        ),
      );
      expect(find.text('商品リスト'), findsOneWidget);
      expect(find.text('(　´･‿･｀)'), findsNothing);

      await tester.pumpAndSettle();

      expect(find.text('カート(0)'), findsOneWidget);
      expect(find.text('test1'), findsOneWidget);
      expect(find.text('追加'), findsNWidgets(2));

      // Press 追加 button
      await tester.tap(find.text('追加').first);
      await tester.pump();

      expect(find.text('カート(1)'), findsOneWidget);

      // Open カート screen
      await tester.tap(find.text('カート(1)'));
      await tester.pumpAndSettle();

      // Close カート screen
      await tester.tap(find.text('閉じる'));
      await tester.pumpAndSettle();

      expect(find.text('商品リスト'), findsOneWidget);

      // Open カート screen
      await tester.tap(find.text('カート(1)'));
      await tester.pumpAndSettle();

      expect(find.text('カート'), findsOneWidget);
      expect(find.text('削除'), findsOneWidget);

      // Press 削除 button
      await tester.tap(find.text('削除'));
      await tester.pump();

      expect(find.text('削除'), findsNothing);

      await tester.pumpAndSettle();

      // カート screen closed automatically by cart cleared
      expect(find.text('商品リスト'), findsOneWidget);
    });
  });
}
