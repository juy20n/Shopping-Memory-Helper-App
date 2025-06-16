class AppAccessAlert {
  bool alertEnabled;

  AppAccessAlert({this.alertEnabled = true});

  // 접근 이벤트 시 알림 출력
  String? checkAppAccess({required String appName, required String product}) {
    if (!alertEnabled) return null;
    return '$product을(를) $appName 앱에서 구매할 수 있어요!';
  }
}
