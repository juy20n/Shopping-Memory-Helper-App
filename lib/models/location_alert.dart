import 'item.dart';

class LocationAlert {
  List<String> locations;
  bool isActive;
  double alertRadius;

  LocationAlert({
    required this.locations,
    required this.isActive,
    required this.alertRadius,
  });

  // 구매 장소 근처 접근 시 알림 메시지 생성
  List<String> getPurchaseAlerts(String currentLocation, List<Item> itemList) {
    List<String> alerts = [];

    if (isActive && locations.contains(currentLocation)) {
      for (var item in itemList) {
        if (item.location == currentLocation && !item.isChecked) {
          alerts.add("${item.name}을(를) $currentLocation에서 구매할 수 있어요!");
        }
      }
    }

    return alerts;
  }
}
