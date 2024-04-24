import 'dart:convert';

import 'package:get/get.dart';
import 'package:pm_df_vistoria/routes/app_pages.dart';
import 'package:pm_df_vistoria/src/infrastructure/services/auth_service_imp.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginController extends GetxController {
  final AuthServiceImp userAuthService;

  LoginController({required this.userAuthService});

  final controllerWebView = WebViewController();
  final RxBool webViewIsLoading = true.obs;
  final RxBool rememberUser = false.obs;

  String script = '''
  (() => {
    var json = {};
    for (var i = 0; i < localStorage.length; i++){
      var key = localStorage.key(i);
      json[key] = localStorage.getItem(key);
    }
    return json;
  })()
''';

  @override
  void onInit() {
    controllerWebView
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..clearCache()
      ..clearLocalStorage()
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            webViewIsLoading.value = progress != 100;
          },
          onPageStarted: (String url) {},
          onUrlChange: (_) async {
            var rawResult =
                await controllerWebView.runJavaScriptReturningResult(script);
            final Map<String, dynamic> result =
                jsonDecode(rawResult.toString());

            if (result.containsKey('access_token')) {
              userAuthService.sigIn(result['access_token'] as String);
              Get.offAllNamed(Routes.dashboard);
            }
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..setOnConsoleMessage((message) {})
      ..loadRequest(
        Uri.parse('https://dsv-vistoria.rs.pm.df.gov.br'),
      );
    super.onInit();
    super.onInit();
  }
}
