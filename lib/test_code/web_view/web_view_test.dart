import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl =
    Uri.parse('https://www.millie.co.kr/v3/post/752543?nav_hidden=y');

class WebViewTest extends StatelessWidget {
  WebViewTest({super.key});

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HwanE Blog'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                controller.loadRequest(homeUrl);
              },
              icon: Icon(Icons.home_filled)),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
