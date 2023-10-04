import 'package:flutter/material.dart';
import 'package:shoety/product/shoe.dart';
import 'package:shoety/view/product_details.dart';

class DiscGridView extends StatelessWidget {
  const DiscGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: GridView.count(
        padding: EdgeInsets.zero,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          ...List.generate(
            shoes.length,
            (index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      shoe: shoes[index],
                    ),
                  ),
                );
              },
              child: SizedBox(
                height: 224,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Image.asset(
                              shoes[index].type,
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Positioned(
                            top: 43,
                            left: 15,
                            child: Image.asset(
                              shoes[index].image,
                              height: 85,
                              width: 120,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jordan 1 Retro High Tie Dye',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/star.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '4.5 (1045 Reviews)',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '255',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
