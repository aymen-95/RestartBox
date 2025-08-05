import 'package:flutter/material.dart';

/// A page to manage and review future project ideas.
class IdeasPage extends StatelessWidget {
  /// Creates an [IdeasPage].
  const IdeasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ideas'),
      ),
      body: const Center(
        child: Text('Ideas Page'),
      ),
    );
  }
}
