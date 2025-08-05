import 'package:flutter/material.dart';

/// A page for journaling and self-reflection activities.
class SelfResetPage extends StatelessWidget {
  /// Creates a [SelfResetPage].
  const SelfResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self Reset'),
      ),
      body: const Center(
        child: Text('Self Reset Page'),
      ),
    );
  }
}
