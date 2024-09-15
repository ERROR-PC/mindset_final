import 'package:flutter/material.dart';
import 'package:mindset_final/reuseable/my_input_label.dart';

class GreyTextFormField extends StatelessWidget {
  static final Color inputColor = Colors.grey.shade100;
  static const Widget _smallSpace = SizedBox(height: 8);

  final String labelText;
  final String hintText;
  final int maxLines;

  const GreyTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyInputLabel(labelText: labelText),
        _smallSpace,
        TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: inputColor,
            filled: true,
          ),
        ),
      ],
    );
  }
}
