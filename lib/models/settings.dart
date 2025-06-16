class Settings {
  bool notificationEnabled;
  String language;
  bool autoDarkMode;

  Settings({
    this.notificationEnabled = true,
    this.language = 'ko',
    this.autoDarkMode = false,
  });

  // 알림 설정
  void toggleNotifications() {
    notificationEnabled = !notificationEnabled;
  }

  // 다크 모드 설정
  void toggleDarkMode() {
    autoDarkMode = !autoDarkMode;
  }

  // 언어 설정 (ko 또는 en만 허용)
  void setLanguage(String newLanguage) {
    if (newLanguage == 'ko' || newLanguage == 'en') {
      language = newLanguage;
    } else {
      throw ArgumentError("지원되지 않는 언어입니다. 'ko' 또는 'en'만 사용할 수 있습니다.");
    }
  }

  // 설정 초기화
  void resetSettings() {
    notificationEnabled = true;
    language = 'ko';
    autoDarkMode = false;
  }
}
