
import 'package:flutter/material.dart';

class PriceRangeCard extends StatelessWidget {
  const PriceRangeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SizedBox(
        height: 112,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Price Range',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 4,
                  width: 96.5,
                  color: Colors.grey,
                ),
                //
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                //
                Container(
                  height: 4,
                  width: 110,
                  color: Colors.black,
                ),
                //
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                //
                Container(
                  height: 4,
                  width: 96.5,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text('\$0'),
                SizedBox(
                  width: 70,
                ),
                Text(
                  '\$200',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '\$750',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 52,
                ),
                Text('\$1,750'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
