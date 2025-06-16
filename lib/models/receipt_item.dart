class ReceiptItem {
  String name;       // 이름
  double price;      // 가격
  int quantity;      // 수량
  String category;   // 카테고리

  ReceiptItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.category,
  });
}
