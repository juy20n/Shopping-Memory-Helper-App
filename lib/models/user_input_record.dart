class UserInputRecord {
  String manualItemName; // 항목명
  double amount;         // 가격
  int quantity;          // 수량
  String category;       // 카테고리

  UserInputRecord({
    required this.manualItemName,
    required this.amount,
    required this.quantity,
    required this.category,
  });

  // 입력값 저장
  void saveInput(String name, double amount, int quantity, String category, String memo) {
    manualItemName = name;
    this.amount = amount;
    this.quantity = quantity;
    this.category = category;
  }

  // 항목 수정
  void editInput(String name, double amount, int quantity, String category, String memo) {
    saveInput(name, amount, quantity, category, memo);
  }

  // 항목 삭제 (초기화)
  void deleteInput() {
    manualItemName = '';
    amount = 0;
    quantity = 0;
    category = '';
  }

  // 총액 반환 (금액 * 수량)
  double getTotal() {
    return amount * quantity;
  }
}
