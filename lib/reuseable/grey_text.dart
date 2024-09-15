import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  final String text;
  const GreyText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      softWrap: true,
      style: TextStyle(
        color: Colors.grey.shade500,
      ),
    );
  }
}
