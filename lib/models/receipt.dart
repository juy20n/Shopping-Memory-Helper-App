import 'receipt_item.dart';

class Receipt {
  DateTime date = DateTime.now(); // 구매 날짜
  double totalAmount = 0; // 총 금액
  List<ReceiptItem> items = []; // 구매 항목 리스트

  // 항목 추가
  void addReceiptItem(ReceiptItem item) {
    items.add(item);
    calculateTotal();
  }

  // 항목 삭제
  void deleteReceiptItem(ReceiptItem item) {
    items.remove(item);
    calculateTotal();
  }

  // 전체 항목 수정
  void editReceipt(List<ReceiptItem> newItems) {
    items = newItems;
    calculateTotal();
  }

  // 특정 항목 수정 기능 추가
  void editReceiptItem(int index, ReceiptItem updatedItem) {
    if (index >= 0 && index < items.length) {
      items[index] = updatedItem;
      calculateTotal();
    }
  }

  // 총 금액 계산
  void calculateTotal() {
    totalAmount = 0;
    for (var item in items) {
      totalAmount += item.price * item.quantity;
    }
  }
}