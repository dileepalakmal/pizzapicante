import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key, required this.pageURL}) : super(key: key);

  final String pageURL;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController webViewController;

  Future _refreshData() async {
    webViewController.loadUrl(widget.pageURL);
    debugPrint(
        "////////////// ----------- REFRESH PAGE ----------- //////////////");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemeData.pureColorWhite,
        leading: IconButton(
          icon: const Icon(
            Icons.close_rounded,
            color: AppThemeData.pureColorBlack,
          ),
          onPressed: () async {
            Navigator.pop(context);
            debugPrint(
                "////////////// ----------- CLOSE PAGE ----------- //////////////");
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              // child: Text(
              //   "Refresh Screen",
              //   style: CSText().textTitle,
              // ),
              icon: const Icon(
                Icons.refresh,
                color: AppThemeData.pureColorBlack,
              ),
              onPressed: () async {
                webViewController.loadUrl(widget.pageURL);
                debugPrint(
                    "////////////// ----------- REFRESH PAGE ----------- //////////////");
              },
            ),
            IconButton(
              // child: Text(
              //   "Previous",
              //   style: CSText().textTitle,
              // ),
              icon: const Icon(
                Icons.navigate_before_rounded,
                color: AppThemeData.pureColorBlack,
              ),
              onPressed: () async {
                webViewController.goBack();
                debugPrint(
                    "////////////// ----------- BACK PAGE ----------- //////////////");
              },
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        color: AppThemeData.pureColorWhite,
        backgroundColor: AppThemeData.pureColorWhite,
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.pageURL,
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
          onPageStarted: (url) {
            debugPrint("Page Refresh: ${widget.pageURL}");
          },
        ),
      ),
    );
  }
}
