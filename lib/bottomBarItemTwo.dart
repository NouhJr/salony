import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ItemTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://my-salony.com/salons/',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
