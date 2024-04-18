import 'package:flutter/material.dart';
import 'package:soccerapp/ui/theme/utils/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailScreen extends StatefulWidget {
  final String urls;
  final String title;
  const NewsDetailScreen({super.key, required this.urls, required this.title});

  @override
  State<StatefulWidget> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  final controller = WebViewController();

  bool isLoading = true;

  loadPage() {
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            _onAddToJs(controller);
            setState(() {
              isLoading = false;
            });
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.urls));
  }

  _onAddToJs(webViewController) {
    webViewController.runJavaScript(
      '''
      let ele = document.getElementById("div-gpt-ad-topfrm-parallax-wrapper");
      ele.remove();

      let ads = document.getElementById("div-gpt-ad-exposer-placeholder");
      ads.remove();

      let ads1 = document.getElementById("div-gpt-ad-mgid-inarticle-placeholder");
      ads1.remove();

      let ads2 = document.getElementById("div-gpt-ad-sc-paging-placeholder");
      ads2.remove();

      let ads3 = document.getElementById("div-gpt-ad-bola-picturefirst");
      ads3.remove();

      let ads4 = document.getElementById("dfp-bframe-cont");
      ads4.remove();

      let vid = document.getElementById("native_videoscroll");
      vid.remove();
      
      let hdr = document.getElementsByClassName("header")[0];
      hdr.remove();

      document.querySelectorAll(".banner-slot").forEach(el => el.remove());      
      document.querySelectorAll(".detail__terkait").forEach(el => el.remove());      
      document.querySelectorAll(".advertisement-placeholder").forEach(el => el.remove());      
      document.querySelectorAll(".box-crosslink").forEach(el => el.remove());
      document.querySelectorAll(".box-tag").forEach(el => el.remove());
      document.querySelectorAll(".article-ad").forEach(el => el.remove());
      document.querySelectorAll(".box-comment").forEach(el => el.remove());
      document.querySelectorAll(".box-article").forEach(el => el.remove());
      document.querySelectorAll(".detail-sosmed").forEach(el => el.remove());
      document.querySelectorAll(".wachannel-sticky").forEach(el => el.remove());
      document.querySelectorAll(".footer").forEach(el => el.remove());
      document.querySelectorAll(".adsbygoogle").forEach(el => el.remove());
      
      ''',
    );
  }

  @override
  void initState() {
    super.initState();
    loadPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
        text: widget.title,
        textColor: AppTheme.color.neutral.shade100,
        color: AppTheme.color.primary,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : WebViewWidget(controller: controller),
    );
  }
}
