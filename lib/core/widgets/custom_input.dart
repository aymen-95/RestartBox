import 'package:flutter/material.dart';

/// A reusable text field widget with a controller and hint text.
class CustomInput extends StatelessWidget {
  /// The controller that manages the text being edited.
  final TextEditingController controller;

  /// The placeholder hint shown when the field is empty.
  final String hint;

  /// Creates a [CustomInput].
  const CustomInput({
    Key? key,
    required this.controller,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
