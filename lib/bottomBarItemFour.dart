import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ItemFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          'https://my-salony.com/%d8%a7%d9%84%d8%b9%d8%b1%d9%88%d8%b6-%d9%88%d8%a7%d9%84%d8%a8%d8%a7%d9%82%d8%a7%d8%aa/',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
