import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inb_proj/features/presentation/components/webview_navigation_controls.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BISPage extends StatefulWidget {
  BISPage({Key key}) : super(key: key);

  @override
  State<BISPage> createState() => _BISPageState();

}

class _BISPageState extends State<BISPage>{
  String _title = 'INB Prov App';
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: <Widget>[
          NavigationControls(_controller.future),
        ],
      ),
      body: _buildWebView(),
    );
  }

  Widget _buildWebView(){
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://bis.sdbinb.in',
      onWebViewCreated: (WebViewController webViewController){
        _controller.complete(webViewController);
      },
    );
  }
}