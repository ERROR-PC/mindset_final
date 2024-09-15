import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  final double min;
  final double max;
  final int divisions;

  const MySlider({
    super.key,
    required this.min,
    required this.max,
    required this.divisions,
  });

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    String roundedValueStr = _sliderValue.round().toString();
    return Row(
      children: [
        Text(widget.min.round().toString()),
        Expanded(
          child: Slider(
            value: _sliderValue,
            label: roundedValueStr,
            min: widget.min,
            max: widget.max,
            divisions: widget.divisions,
            onChanged: (newValue) {
              setState(() {
                _sliderValue = newValue;
              });
            },
          ),
        ),
        Text(widget.max.round().toString()),
      ],
    );
  }
}
