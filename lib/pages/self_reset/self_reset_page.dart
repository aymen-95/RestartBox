import 'package:flutter/material.dart';

import '../../core/widgets/item_card.dart';
import '../../core/widgets/custom_input.dart';
import '../../core/widgets/custom_button.dart';

class SelfResetPage extends StatefulWidget {
  const SelfResetPage({Key? key}) : super(key: key);

  @override
  State<SelfResetPage> createState() => _SelfResetPageState();
}

class _SelfResetPageState extends State<SelfResetPage> {
  final List<String> _entries = [
    'Write down things you are grateful for.',
    'Take a short walk to clear your mind.',
    'Practice deep breathing for five minutes.',
  ];

  final TextEditingController _entryController = TextEditingController();

  @override
  void dispose() {
    _entryController.dispose();
    super.dispose();
  }

  void _addEntry() {
    final entry = _entryController.text.trim();
    if (entry.isNotEmpty) {
      setState(() {
        _entries.add(entry);
      });
      _entryController.clear();
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self Reset'),
      ),
      body: ListView.builder(
        itemCount: _entries.length,
        itemBuilder: (context, index) {
          final entry = _entries[index];
          return ItemCard(
            title: entry,
            subtitle: '',
            onTap: () {
              // Optionally edit or delete the entry
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Add New Entry'),
              content: CustomInput(
                controller: _entryController,
                hint: 'Your reflection or activity',
              ),
              actions: [
                CustomButton(
                  text: 'Add',
                  onPressed: _addEntry,
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
