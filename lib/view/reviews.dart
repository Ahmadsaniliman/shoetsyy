import 'package:flutter/material.dart';
import 'package:shoety/product/reviews.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> reviewsText = [
      'All',
      '5 Stars',
      '4 Stars',
      '3 Stars',
      '2 Stars',
      '1 Stars',
    ];
    int reviewIndex = 0;
    return Scaffold(
      body: Column(
        children: [
          const ReviewsBar(),
          TextStars(
            reviewsText: reviewsText,
            reviewIndex: reviewIndex,
          ),
          const ReviewsAll(),
        ],
      ),
    );
  }
}

class TextStars extends StatelessWidget {
  const TextStars({
    super.key,
    required this.reviewsText,
    required this.reviewIndex,
  });

  final List<String> reviewsText;
  final int reviewIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 20,
      ),
      child: SizedBox(
        height: 30,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              reviewsText.length,
              (index) => Text(
                reviewsText[index],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: reviewIndex == index ? FontWeight.bold : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewsAll extends StatelessWidget {
  const ReviewsAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SizedBox(
        height: 720,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                reviews.length,
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 95,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        reviews[index].image,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            reviews[index].name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Perfect for keeping your feet dry and warm in\ndamp conditions.',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Text(reviews[index].date),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewsBar extends StatelessWidget {
  const ReviewsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 20,
        top: 44,
      ),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            const Text(
              'Review (1045)',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/star.png',
                  width: 20,
                  height: 20,
                ),
                const Text(
                  '4.5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
