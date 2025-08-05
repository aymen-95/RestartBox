import 'package:flutter/material.dart';

/// A simple widget displaying the application logo.
class AppLogo extends StatelessWidget {
  /// Creates an [AppLogo].
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For now we use Flutter's default logo. Replace with your own asset if available.
    return const FlutterLogo(size: 48);
  }
}
