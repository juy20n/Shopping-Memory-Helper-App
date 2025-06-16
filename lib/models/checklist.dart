import 'item.dart';

class CheckList {
  List<Item> items = [];
  DateTime createdAt = DateTime.now();
  String title;
  String listType;

  CheckList({required this.title, required this.listType});

  void addItem(Item item) => items.add(item);

  void removeItem(Item item) => items.remove(item);

  void toggleCheck(int index) =>
      items[index].isChecked = !items[index].isChecked;

  void clearList() => items.clear();
}
