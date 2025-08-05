import 'package:flutter/material.dart';

/// A page serving as a temporary holding area for unorganized files and items.
class InboxPage extends StatelessWidget {
  /// Creates an [InboxPage].
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: const Center(
        child: Text('Inbox Page'),
      ),
    );
  }
}
