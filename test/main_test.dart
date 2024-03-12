import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  testWidgets('WebView Test', (WidgetTester tester) async {
    // Build a MaterialApp with a WebView
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: WebView(
          initialUrl: 'https://www.example.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    ));

    // Wait for the webview to load
    await tester.pumpAndSettle();

    // Verify that the WebView is loaded and displayed
    expect(find.byType(WebView), findsOneWidget);
  });
}
