import 'package:flutter/material.dart';

/// A reusable button widget with text and an onPressed callback.
///
/// This encapsulates an [ElevatedButton] so that styling can be
/// centralized in one place and reused across the application.
class CustomButton extends StatelessWidget {
  /// The label displayed on the button.
  final String text;

  /// The callback invoked when the button is pressed.
  final VoidCallback onPressed;

  /// Creates a [CustomButton].
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
