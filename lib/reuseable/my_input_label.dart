import 'package:flutter/material.dart';

class MyInputLabel extends StatelessWidget {
  const MyInputLabel({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Text(labelText, style: const TextStyle(fontWeight: FontWeight.bold));
  }
}
