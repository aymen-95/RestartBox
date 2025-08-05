import 'package:flutter/material.dart';

/// A page listing the user's current projects.
class ProjectsPage extends StatelessWidget {
  /// Creates a [ProjectsPage].
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: const Center(
        child: Text('Projects Page'),
      ),
    );
  }
}
