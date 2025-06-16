import 'package:flutter/material.dart';
import '../models/item.dart';
import '../models/checklist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CheckList _checkList = CheckList(title: "장보기 리스트", listType: "주간");

  final TextEditingController _itemController = TextEditingController();

  void _addItem() {
    if (_itemController.text.isEmpty) return;
    final item = Item(
      name: _itemController.text,
      category: '기본',
      location: '마트',
      memo: '',
    );
    setState(() {
      _checkList.addItem(item);
    });
    _itemController.clear();
  }

  void _toggleCheck(int index) {
    setState(() {
      _checkList.toggleCheck(index);
    });
  }

  void _removeItem(int index) {
    setState(() {
      _checkList.removeItem(_checkList.items[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('장보기 기억 도우미'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _itemController,
              decoration: const InputDecoration(
                labelText: '항목 추가',
                suffixIcon: Icon(Icons.add),
              ),
              onSubmitted: (_) => _addItem(),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _checkList.items.length,
                itemBuilder: (context, index) {
                  final item = _checkList.items[index];
                  return ListTile(
                    leading: Checkbox(
                      value: item.isChecked,
                      onChanged: (_) => _toggleCheck(index),
                    ),
                    title: Text(item.name),
                    subtitle: Text('${item.category} / ${item.location}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
