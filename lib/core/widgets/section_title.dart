import 'package:flutter/material.dart';

/// Displays a section heading with a consistent style.
class SectionTitle extends StatelessWidget {
  /// The title text to display.
  final String title;

  /// Creates a [SectionTitle].
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
