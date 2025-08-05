import 'package:flutter/material.dart';

/// A page to record personal boundaries and limits for psychological safety.
class BoundariesPage extends StatelessWidget {
  /// Creates a [BoundariesPage].
  const BoundariesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boundaries'),
      ),
      body: const Center(
        child: Text('Boundaries Page'),
      ),
    );
  }
}
