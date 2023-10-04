import 'package:flutter/material.dart';
import 'package:shoety/product/reviews.dart';
import 'package:shoety/product/shoe.dart';
import 'package:shoety/routes/routes.dart';

class ProductDetailsCenter extends StatelessWidget {
  const ProductDetailsCenter({
    super.key,
    required this.shoe,
    required this.colors,
    required this.selectedIndex,
    required this.numbers,
  });

  final Shoe shoe;
  final List<Color> colors;
  final int selectedIndex;
  final List<double> numbers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SizedBox(
        height: 701,
        //   width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 315,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      shoe.image,
                      height: 350,
                      width: 350,
                    ),
                    Positioned(
                      bottom: 15,
                      right: 30,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 40,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors[index],
                                  border: Border.all(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 30,
                      child: SizedBox(
                        height: 7,
                        width: 41,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              3,
                              (index) => Container(
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedIndex == index
                                      ? Colors.black
                                      : Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 76,
                width: 261,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(),
                            ),
                            child: Center(
                              child: Text(
                                numbers[index].toString(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 132,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      """Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a pair. """,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 461,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Review (1045)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 18),
                    ...List.generate(
                      3,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(reviewpage);
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()),
                          child: const Center(
                            child: Text('See all reviews'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}