import 'package:flutter/material.dart';
import 'package:mindset_final/reuseable/my_app_bar.dart';
import 'package:mindset_final/reuseable/grey_text_input.dart';
import 'package:mindset_final/reuseable/my_input_label.dart';
import 'package:mindset_final/reuseable/my_slider.dart';

class NewReviewPage extends StatelessWidget {
  const NewReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: const Text('Submit Review',
                style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
      appBar: myAppBar(context, 'New Review'),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreyTextFormField(
                  labelText: 'Name',
                  hintText: 'Type your name',
                  maxLines: 1,
                ),
                SizedBox(height: 30),
                GreyTextFormField(
                  labelText: 'How was your experience',
                  hintText: 'Describe your experience',
                  maxLines: 8,
                ),
                SizedBox(height: 10),
                MyInputLabel(labelText: 'Stars'),
                MySlider(
                  min: 0,
                  max: 5,
                  divisions: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
