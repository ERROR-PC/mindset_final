import 'package:flutter/material.dart';
import 'package:mindset_final/reuseable/grey_text.dart';
import 'package:mindset_final/reuseable/my_app_bar.dart';
import 'package:mindset_final/reuseable/review_card.dart';
import 'package:mindset_final/reuseable/star_rate.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ShowReviewsPage extends StatelessWidget {
  static const Widget _space = SizedBox(height: 16);
  const ShowReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, 'Reviews'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text('245 Reviews'),
                      Row(
                        children: [
                          const Text('4.8 '),
                          starIcon(),
                          starIcon(),
                          starIcon(),
                          starIcon(),
                          starOutlineIcon(),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade700,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 12,
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        ImageIcon(
                          Svg('images/edit-square.svg'),
                          size: 15,
                        ),
                        SizedBox(width: 8),
                        Text('Add Review'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const ReviewCard(
                pfpPath: 'images/pfps/rectangle-568.png',
                name: 'Jenny Wilson',
                date: '13 Sep, 2020',
                review:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
              _space,
              const ReviewCard(
                pfpPath: 'images/pfps/rectangle-219.png',
                name: 'Ronald Richards',
                date: '13 Sep, 2020',
                review:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
              _space,
              const ReviewCard(
                pfpPath: 'images/pfps/rectangle-161.png',
                name: 'Guy Hawkins',
                date: '13 Sep, 2020',
                review:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
              _space,
              const ReviewCard(
                pfpPath: 'images/pfps/rectangle-5682.png',
                name: 'Savannah Nguyen',
                date: '13 Sep, 2020',
                review:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
