import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            if (await _webViewController.canGoBack()) {
              _webViewController.goBack();
              return false;
            } else {
              return true;
            }
          },
          child: WebView(
            initialUrl: 'https://jow.plus/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (webViewController) =>
                _webViewController = webViewController,
          ),
        ),
      ),
    );
  }
}
