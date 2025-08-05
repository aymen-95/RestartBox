import 'package:flutter/material.dart';
import 'pages/dashboard/dashboard_page.dart';

/// Entry point of the RestartBox application.
///
/// This sets up the root [MaterialApp] with a custom theme and points to
/// the [DashboardPage] as the home screen.
void main() {
  runApp(const RestartBoxApp());
}

class RestartBoxApp extends StatelessWidget {
  /// Creates a [RestartBoxApp].
  const RestartBoxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RestartBox',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Set a default font family if you add custom fonts to pubspec.yaml.
        // fontFamily: 'Cairo',
      ),
      home: const DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
