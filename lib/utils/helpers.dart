// lib/utils/helpers.dart

import 'package:flutter/material.dart';

// Helper function to create a standard button
Widget createButton({
  required String label,
  required VoidCallback onPressed,
  Color color = Colors.blue,
  TextStyle? textStyle,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(backgroundColor: color),
    child: Text(
      label,
      style: textStyle ?? TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}

// Helper function to show a snack bar
void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ),
  );
}

// Helper function to validate email format
bool isValidEmail(String email) {
  final RegExp emailRegExp = RegExp(
    r'^[^@]+@[^@]+\.[^@]+',
  );
  return emailRegExp.hasMatch(email);
}

// Helper function to validate password strength
bool isValidPassword(String password) {
  return password.length >= 6; // Example: password must be at least 6 characters
}