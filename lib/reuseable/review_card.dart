import 'package:flutter/material.dart';
import 'package:mindset_final/reuseable/grey_text.dart';
import 'package:mindset_final/reuseable/star_rate.dart';

class ReviewCard extends StatelessWidget {
  final String pfpPath;
  final String name;
  final String date;
  final String review;

  const ReviewCard({
    super.key,
    required this.pfpPath,
    required this.name,
    required this.date,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(pfpPath),
            const SizedBox(width: 4),
            Column(
              children: [
                Text(name),
                Row(
                  children: [
                    const SizedBox(width: 6),
                    Icon(
                      Icons.schedule,
                      size: 12,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(width: 2),
                    GreyText(date),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const Text('4.8 Rating'),
                Row(
                  children: [
                    starIcon(),
                    starIcon(),
                    starIcon(),
                    starIcon(),
                    starOutlineIcon(),
                  ],
                ),
              ],
            ),
          ],
        ),
        GreyText(review),
      ],
    );
  }
}
