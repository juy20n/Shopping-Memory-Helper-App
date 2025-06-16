class Item {
  static const List<String> allowedCategories = ['음식', '쇼핑', '의류', '카페', '기타'];

  String name;         // 항목 이름
  String category;     // 카테고리: 음식, 쇼핑, 의류, 카페, 기타
  String location;     // 구매 가능한 장소
  String memo;         // 메모
  bool isChecked;      // 체크 여부 (구매 여부)

  Item({
    required this.name,
    required this.category,
    required this.location,
    required this.memo,
    this.isChecked = false,
  }) {
    _validateCategory(category);
  }

  // 항목 편집 메서드
  void editItem({
    required String newName,
    required String newCategory,
    required String newLocation,
    required String newMemo,
  }) {
    _validateCategory(newCategory);
    name = newName;
    category = newCategory;
    location = newLocation;
    memo = newMemo;
  }

  // 체크박스 상태 토글 메서드
  void toggleCheck() {
    isChecked = !isChecked;
  }

  // 카테고리 유효성 검사
  void _validateCategory(String cat) {
    if (!allowedCategories.contains(cat)) {
      throw ArgumentError('유효하지 않은 카테고리입니다. 허용된 값: $allowedCategories');
    }
  }
}
