import 'package:flutter/material.dart';

AppBar myAppBar(
  BuildContext context, [
  String title = '',
  Color? backColor,
]) {
  backColor ??= Colors.grey.shade200;

  return AppBar(
    centerTitle: true,
    title: const Text('Add Review'),
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(backColor),
      ),
    ),
  );
}
