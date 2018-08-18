import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:wdb106_sample/bloc/items_bloc.dart';

import 'package:wdb106_sample/main.dart';
import 'package:wdb106_sample/model/api.dart';
import 'package:mockito/mockito.dart';

import 'helper/api.dart';

void main() {
  // See: https://github.com/flutter/flutter/blob/master/packages/flutter/test/widgets/image_headers_test.dart
  final MockHttpClient client = MockHttpClient();
  final MockHttpClientRequest request = MockHttpClientRequest();
  final MockHttpClientResponse response = MockHttpClientResponse();
  final MockHttpHeaders headers = MockHttpHeaders();

  testWidgets('Smoke test', (tester) async {
    await HttpOverrides.runZoned(() async {
      await tester.pumpWidget(App(
        itemsBloc: ItemsBloc(
          client: MockApiClient(),
        ),
      ));
      expect(find.text('商品リスト'), findsOneWidget);
      expect(find.text('(　´･‿･｀)'), findsNothing);

      await tester.pump();

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
    }, createHttpClient: (_) {
      // ignore: argument_type_not_assignable
      when(client.getUrl(typed(any)))
          .thenAnswer((_) => Future<HttpClientRequest>.value(request));
      when(request.headers).thenReturn(headers);
      when(request.close())
          .thenAnswer((_) => Future<HttpClientResponse>.value(response));
      when(response.contentLength).thenReturn(kTransparentImage.length);
      when(response.statusCode).thenReturn(HttpStatus.OK);
      // ignore: argument_type_not_assignable
      when(response.listen(typed(any))).thenAnswer((invocation) {
        final void Function(List<int>) onData =
            invocation.positionalArguments[0];
        final void Function() onDone = invocation.namedArguments[#onDone];
        final void Function(Object, [StackTrace]) onError =
            invocation.namedArguments[#onError];
        final bool cancelOnError = invocation.namedArguments[#cancelOnError];
        return new Stream<List<int>>.fromIterable(
                <List<int>>[kTransparentImage])
            .listen(onData,
                onDone: onDone, onError: onError, cancelOnError: cancelOnError);
      });
      return client;
    });
  });
}

class MockHttpClient extends Mock implements HttpClient {}

class MockHttpClientRequest extends Mock implements HttpClientRequest {}

class MockHttpClientResponse extends Mock implements HttpClientResponse {}

class MockHttpHeaders extends Mock implements HttpHeaders {}

const List<int> kTransparentImage = const <int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
];
